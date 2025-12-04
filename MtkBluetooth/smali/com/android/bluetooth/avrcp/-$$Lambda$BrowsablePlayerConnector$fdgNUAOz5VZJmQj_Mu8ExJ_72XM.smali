.class public final synthetic Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$fdgNUAOz5VZJmQj_Mu8ExJ_72XM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/ResolveInfo;

.field public final synthetic f$1:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ResolveInfo;Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$fdgNUAOz5VZJmQj_Mu8ExJ_72XM;->f$0:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$fdgNUAOz5VZJmQj_Mu8ExJ_72XM;->f$1:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    return-void
.end method


# virtual methods
.method public final run(ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$fdgNUAOz5VZJmQj_Mu8ExJ_72XM;->f$0:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$fdgNUAOz5VZJmQj_Mu8ExJ_72XM;->f$1:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-static {v0, v1, p1, p2}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->lambda$connectToPlayers$0(Landroid/content/pm/ResolveInfo;Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    return-void
.end method
