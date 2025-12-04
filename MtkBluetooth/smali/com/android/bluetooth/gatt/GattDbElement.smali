.class public Lcom/android/bluetooth/gatt/GattDbElement;
.super Ljava/lang/Object;
.source "GattDbElement.java"


# static fields
.field public static final TYPE_CHARACTERISTIC:I = 0x3

.field public static final TYPE_DESCRIPTOR:I = 0x4

.field public static final TYPE_INCLUDED_SERVICE:I = 0x2

.field public static final TYPE_PRIMARY_SERVICE:I = 0x0

.field public static final TYPE_SECONDARY_SERVICE:I = 0x1


# instance fields
.field public attributeHandle:I

.field public endHandle:I

.field public id:I

.field public permissions:I

.field public properties:I

.field public startHandle:I

.field public type:I

.field public uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCharacteristic(Ljava/util/UUID;II)Lcom/android/bluetooth/gatt/GattDbElement;
    .locals 2

    .line 70
    new-instance v0, Lcom/android/bluetooth/gatt/GattDbElement;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/GattDbElement;-><init>()V

    .line 71
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    .line 72
    iput-object p0, v0, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    .line 73
    iput p1, v0, Lcom/android/bluetooth/gatt/GattDbElement;->properties:I

    .line 74
    iput p2, v0, Lcom/android/bluetooth/gatt/GattDbElement;->permissions:I

    .line 75
    return-object v0
.end method

.method public static createDescriptor(Ljava/util/UUID;I)Lcom/android/bluetooth/gatt/GattDbElement;
    .locals 2

    .line 79
    new-instance v0, Lcom/android/bluetooth/gatt/GattDbElement;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/GattDbElement;-><init>()V

    .line 80
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    .line 81
    iput-object p0, v0, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    .line 82
    iput p1, v0, Lcom/android/bluetooth/gatt/GattDbElement;->permissions:I

    .line 83
    return-object v0
.end method

.method public static createIncludedService(I)Lcom/android/bluetooth/gatt/GattDbElement;
    .locals 2

    .line 87
    new-instance v0, Lcom/android/bluetooth/gatt/GattDbElement;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/GattDbElement;-><init>()V

    .line 88
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    .line 89
    iput p0, v0, Lcom/android/bluetooth/gatt/GattDbElement;->attributeHandle:I

    .line 90
    return-object v0
.end method

.method public static createPrimaryService(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/GattDbElement;
    .locals 2

    .line 56
    new-instance v0, Lcom/android/bluetooth/gatt/GattDbElement;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/GattDbElement;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    .line 58
    iput-object p0, v0, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    .line 59
    return-object v0
.end method

.method public static createSecondaryService(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/GattDbElement;
    .locals 2

    .line 63
    new-instance v0, Lcom/android/bluetooth/gatt/GattDbElement;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/GattDbElement;-><init>()V

    .line 64
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    .line 65
    iput-object p0, v0, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    .line 66
    return-object v0
.end method
