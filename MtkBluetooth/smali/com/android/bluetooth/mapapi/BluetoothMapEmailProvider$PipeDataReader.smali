.class public interface abstract Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;
.super Ljava/lang/Object;
.source "BluetoothMapEmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PipeDataReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract readDataFromPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation
.end method
