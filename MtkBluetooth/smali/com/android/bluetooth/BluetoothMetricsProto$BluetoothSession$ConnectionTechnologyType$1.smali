.class Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType$1;
.super Ljava/lang/Object;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
    .locals 0

    .line 4110
    invoke-static {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 4107
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType$1;->findValueByNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    move-result-object p1

    return-object p1
.end method
