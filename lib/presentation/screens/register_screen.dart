import 'package:flutter/material.dart';
import 'package:forms_app/presentation/widgets/inputs/custom_text_field_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo usuario'),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              FlutterLogo(size: 100),
              _RegisterForm(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextFormField(
            label: 'Nombre de Usuario',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFormField(
            label: 'Correo electrónico'
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          FilledButton.tonalIcon(
            onPressed: () {},
            icon: const Icon(Icons.save),
            label: const Text('Guardar usuario'),
          ),
        ],
      ),
    );
  }
}
