.class public final enum Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;
.super Ljava/lang/Enum;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType$DeviceTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

.field public static final enum DEVICE_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

.field public static final DEVICE_TYPE_BREDR_VALUE:I = 0x1

.field public static final enum DEVICE_TYPE_DUMO:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

.field public static final DEVICE_TYPE_DUMO_VALUE:I = 0x3

.field public static final enum DEVICE_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

.field public static final DEVICE_TYPE_LE_VALUE:I = 0x2

.field public static final enum DEVICE_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

.field public static final DEVICE_TYPE_UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 3421
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    const-string v1, "DEVICE_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    .line 3425
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    const-string v1, "DEVICE_TYPE_BREDR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    .line 3429
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    const-string v1, "DEVICE_TYPE_LE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    .line 3433
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    const-string v1, "DEVICE_TYPE_DUMO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_DUMO:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    .line 3412
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    sget-object v6, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    .line 3486
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType$1;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType$1;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3510
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3511
    iput p3, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->value:I

    .line 3512
    return-void
.end method

.method public static forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;
    .locals 1

    .line 3472
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 3477
    const/4 p0, 0x0

    return-object p0

    .line 3476
    :cond_0
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_DUMO:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    return-object p0

    .line 3475
    :cond_1
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    return-object p0

    .line 3474
    :cond_2
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_BREDR:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    return-object p0

    .line 3473
    :cond_3
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;",
            ">;"
        }
    .end annotation

    .line 3483
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 3496
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType$DeviceTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3468
    invoke-static {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;
    .locals 1

    .line 3412
    const-class v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;
    .locals 1

    .line 3412
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    invoke-virtual {v0}, [Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 3460
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->value:I

    return v0
.end method
