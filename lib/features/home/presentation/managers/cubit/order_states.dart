abstract class OrderStates {}

class InitialState extends OrderStates {}

class PendingState extends OrderStates {}

class ConfirmedState extends OrderStates {}

class ShippedState extends OrderStates {}

class DeliveredState extends OrderStates {}
