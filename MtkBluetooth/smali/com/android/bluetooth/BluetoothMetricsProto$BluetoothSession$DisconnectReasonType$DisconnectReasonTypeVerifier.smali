.class final Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType$DisconnectReasonTypeVerifier;
.super Ljava/lang/Object;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisconnectReasonTypeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4224
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType$DisconnectReasonTypeVerifier;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType$DisconnectReasonTypeVerifier;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType$DisconnectReasonTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 4227
    invoke-static {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
