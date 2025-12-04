.class public interface abstract Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract mediaUpdatedCallback(Lcom/android/bluetooth/avrcp/MediaData;)V
.end method

.method public abstract sessionUpdatedCallback(Ljava/lang/String;)V
.end method
