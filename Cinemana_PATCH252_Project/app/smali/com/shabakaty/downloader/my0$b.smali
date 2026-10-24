.class public Lcom/shabakaty/downloader/my0$b;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/my0;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/my0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/my0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/my0$b;->r:Lcom/shabakaty/downloader/my0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/my0$b;->r:Lcom/shabakaty/downloader/my0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/my0;->m:Lcom/shabakaty/downloader/z63;

    return-void
.end method
