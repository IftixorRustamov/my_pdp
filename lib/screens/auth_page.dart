import 'package:flutter/material.dart';

import 'package:my_pdp/screens/main_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _isLogin = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(_isLogin ? 'Logging in...' : 'Signing up...')),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 25,
                          child: Text(
                            'P',
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'PDP UNIVERSITY',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    // Toggle Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => setState(() => _isLogin = true),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                _isLogin ? Colors.green[700] : null,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: _isLogin
                                    ? Colors.white
                                    : Colors.green[700]),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () => setState(() => _isLogin = false),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                !_isLogin ? Colors.green[700] : null,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: !_isLogin
                                    ? Colors.white
                                    : Colors.green[700]),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    // Dynamic Form
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: _isLogin ? _buildLoginForm() : _buildSignupForm(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Column(
      key: const ValueKey('login'),
      children: [
        TextFormField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(Icons.email, color: Colors.green[700]),
          ),
          validator: (value) {
            if (value == null || value.isEmpty || !value.contains('@')) {
              return 'Please enter a valid email';
            }
            return null;
          },
        ),
        const SizedBox(height: 15),
        TextFormField(
          controller: _passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(Icons.lock, color: Colors.green[700]),
          ),
          obscureText: true,
          validator: (value) {
            if (value == null || value.length < 6) {
              return 'Password must be at least 6 characters';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          // FIX: Pass context to _submitForm
          onPressed: () => _submitForm(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[700],
            minimumSize: const Size(double.infinity, 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: const Text('Sign In',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors
                      .white)), // Added explicit white color for consistency
        ),
      ],
    );
  }

  Widget _buildSignupForm() {
    return Column(
      key: const ValueKey('signup'),
      children: [
        TextFormField(
          controller: _nameController,
          decoration: InputDecoration(
            labelText: 'Full Name',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(Icons.person, color: Colors.green[700]),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your name';
            }
            return null;
          },
        ),
        const SizedBox(height: 15),
        TextFormField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(Icons.email, color: Colors.green[700]),
          ),
          validator: (value) {
            if (value == null || value.isEmpty || !value.contains('@')) {
              return 'Please enter a valid email';
            }
            return null;
          },
        ),
        const SizedBox(height: 15),
        TextFormField(
          controller: _passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(Icons.lock, color: Colors.green[700]),
          ),
          obscureText: true,
          validator: (value) {
            if (value == null || value.length < 6) {
              return 'Password must be at least 6 characters';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => _submitForm(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[700],
            minimumSize: const Size(double.infinity, 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: const Text('Sign Up',
              style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ],
    );
  }
}
