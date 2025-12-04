.class public interface abstract Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedDataOrBuilder;
.super Ljava/lang/Object;
.source "BluetoothKeystoreProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothKeystoreProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncryptedDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getAuthenticationData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEncryptedData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getInitVector()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAuthenticationData()Z
.end method

.method public abstract hasEncryptedData()Z
.end method

.method public abstract hasInitVector()Z
.end method
