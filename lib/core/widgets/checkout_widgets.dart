import 'package:flutter/material.dart';

class CheckoutSectionCard extends StatelessWidget {
  final String title;
  final Widget child;

  const CheckoutSectionCard({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xff06457d);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: const Color(0xffd2d2d2),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            height: 45,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            alignment: Alignment.centerLeft,
            color: primary,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class CheckoutLabel extends StatelessWidget {
  final String title;
  final Widget child;

  const CheckoutLabel({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 5),
        child,
      ],
    );
  }
}

class CheckoutSimpleInfo extends StatelessWidget {
  final String title;
  final String value;

  const CheckoutSimpleInfo({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class CheckoutDropdown extends StatelessWidget {
  final String value;
  final List<String> items;

  const CheckoutDropdown({
    super.key,
    required this.value,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: const Color(0xfff0f1f2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffd0d2d4),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          isExpanded: true,
          icon: const Icon(
            Icons.keyboard_arrow_down,
          ),
          items: items
              .map(
                (item) => DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
              .toList(),
          onChanged: (_) {},
        ),
      ),
    );
  }
}

class CheckoutNumberField extends StatelessWidget {
  final String value;

  const CheckoutNumberField({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xfff0f1f2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffd0d2d4),
        ),
      ),
      child: TextField(
        controller: TextEditingController(
          text: value,
        ),
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 11,
          ),
        ),
      ),
    );
  }
}

class CheckoutNormalInput extends StatelessWidget {
  final String value;

  const CheckoutNormalInput({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: const Color(0xfff0f1f2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffd0d2d4),
        ),
      ),
      child: Text(
        value,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}

class CheckoutSearchChargeField extends StatelessWidget {
  const CheckoutSearchChargeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xfff0f1f2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffd0d2d4),
        ),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search/Add Additional Charges',
          prefixIcon: Icon(
            Icons.search,
            size: 20,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
      ),
    );
  }
}

class CheckoutGreyButton extends StatelessWidget {
  final String text;

  const CheckoutGreyButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffeeeeea),
          foregroundColor: Colors.black87,
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class CheckoutPlusButton extends StatelessWidget {
  const CheckoutPlusButton({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xff06457d);

    return SizedBox(
      height: 40,
      width: 40,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          padding: EdgeInsets.zero,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CheckoutCreamButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final VoidCallback? onPressed;

  const CheckoutCreamButton({
    super.key,
    this.icon,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xfff1eee0),
        foregroundColor: Colors.black87,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 18,
            ),
            const SizedBox(width: 6),
          ],
          Flexible(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CheckoutBlueButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CheckoutBlueButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xff06457d);

    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 13,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class CheckoutTotalRow extends StatelessWidget {
  final String title;
  final String amount;

  const CheckoutTotalRow({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Text(
          amount,
          style: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class CheckoutPaymentAmount extends StatelessWidget {
  final String title;
  final String amount;

  const CheckoutPaymentAmount({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          amount,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}