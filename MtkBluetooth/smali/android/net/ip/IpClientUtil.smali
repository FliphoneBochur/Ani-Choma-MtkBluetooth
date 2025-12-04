.class public Landroid/net/ip/IpClientUtil;
.super Ljava/lang/Object;
.source "IpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;,
        Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;
    }
.end annotation


# static fields
.field public static final DUMP_ARG:Ljava/lang/String; = "ipclient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpIpClient(Landroid/net/ip/IIpClient;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 202
    const-string p0, "IpClient logs have moved to dumpsys network_stack"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static makeIpClient(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClientCallbacks;)V
    .locals 1

    .line 79
    invoke-static {p0}, Landroid/net/networkstack/ModuleNetworkStackClient;->getInstance(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;

    move-result-object p0

    new-instance v0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;

    invoke-direct {v0, p2}, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;-><init>(Landroid/net/ip/IpClientCallbacks;)V

    .line 80
    invoke-virtual {p0, p1, v0}, Landroid/net/networkstack/ModuleNetworkStackClient;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    .line 81
    return-void
.end method
