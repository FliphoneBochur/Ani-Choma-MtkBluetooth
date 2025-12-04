.class public final synthetic Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$NLIUEnJuInHd0r5Ci2ukbma39_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$NLIUEnJuInHd0r5Ci2ukbma39_s;->f$0:Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;

    iput-object p2, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$NLIUEnJuInHd0r5Ci2ukbma39_s;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(ILjava/lang/String;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$NLIUEnJuInHd0r5Ci2ukbma39_s;->f$0:Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$NLIUEnJuInHd0r5Ci2ukbma39_s;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->lambda$getFolderItems$3(Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
