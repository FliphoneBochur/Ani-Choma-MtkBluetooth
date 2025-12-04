.class Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType$1;
.super Ljava/lang/Object;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;
    .locals 0

    .line 3490
    invoke-static {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 3487
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType$1;->findValueByNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    move-result-object p1

    return-object p1
.end method
