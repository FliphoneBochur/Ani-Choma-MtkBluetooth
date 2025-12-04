.class interface abstract Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;
.super Ljava/lang/Object;
.source "BrowsablePlayerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PlayerListCallback"
.end annotation


# virtual methods
.method public abstract run(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;",
            ">;)V"
        }
    .end annotation
.end method
