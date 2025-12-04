.class public interface abstract Lcom/android/bluetooth/BluetoothMetricsProto$PairEventOrBuilder;
.super Ljava/lang/Object;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PairEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getDevicePairedWith()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
.end method

.method public abstract getDisconnectReason()I
.end method

.method public abstract getEventTimeMillis()J
.end method

.method public abstract hasDevicePairedWith()Z
.end method

.method public abstract hasDisconnectReason()Z
.end method

.method public abstract hasEventTimeMillis()Z
.end method
