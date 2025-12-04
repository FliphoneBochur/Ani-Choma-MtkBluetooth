.class Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId$1;
.super Ljava/lang/Object;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;
    .locals 0

    .line 351
    invoke-static {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId$1;->findValueByNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    move-result-object p1

    return-object p1
.end method
