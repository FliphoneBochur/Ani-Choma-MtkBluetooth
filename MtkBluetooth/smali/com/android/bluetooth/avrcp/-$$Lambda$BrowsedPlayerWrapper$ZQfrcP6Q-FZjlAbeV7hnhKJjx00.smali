.class public final synthetic Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$ZQfrcP6Q-FZjlAbeV7hnhKJjx00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

.field public final synthetic f$1:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$ZQfrcP6Q-FZjlAbeV7hnhKJjx00;->f$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    iput-object p2, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$ZQfrcP6Q-FZjlAbeV7hnhKJjx00;->f$1:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;

    iput-object p3, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$ZQfrcP6Q-FZjlAbeV7hnhKJjx00;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$ZQfrcP6Q-FZjlAbeV7hnhKJjx00;->f$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$ZQfrcP6Q-FZjlAbeV7hnhKJjx00;->f$1:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$ZQfrcP6Q-FZjlAbeV7hnhKJjx00;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->lambda$getFolderItems$3$BrowsedPlayerWrapper(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;Ljava/lang/String;ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    return-void
.end method
