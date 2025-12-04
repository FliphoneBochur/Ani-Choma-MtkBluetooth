.class public final synthetic Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$1$i5E7glYRZ-XLqbD778dPZvR6B8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;

.field public final synthetic f$1:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$1$i5E7glYRZ-XLqbD778dPZvR6B8I;->f$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;

    iput-object p2, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$1$i5E7glYRZ-XLqbD778dPZvR6B8I;->f$1:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    return-void
.end method


# virtual methods
.method public final run(ILjava/lang/String;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$1$i5E7glYRZ-XLqbD778dPZvR6B8I;->f$0:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$1$i5E7glYRZ-XLqbD778dPZvR6B8I;->f$1:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;->lambda$handleMessage$0$BrowsablePlayerConnector$1(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
