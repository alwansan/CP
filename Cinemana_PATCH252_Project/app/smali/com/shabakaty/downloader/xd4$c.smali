.class public final Lcom/shabakaty/downloader/xd4$c;
.super Landroid/content/BroadcastReceiver;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xd4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/xd4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xd4;Lcom/shabakaty/downloader/xd4$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xd4$c;->a:Lcom/shabakaty/downloader/xd4;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/xd4$c;->a:Lcom/shabakaty/downloader/xd4;

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/xd4;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/rr;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/xd4;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
