.class public Lcom/shabakaty/downloader/un0$e;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/shabakaty/downloader/u01$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/un0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/s01$a;

.field public s:Lcom/shabakaty/downloader/p01;

.field public t:Z

.field public final synthetic u:Lcom/shabakaty/downloader/un0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/un0;Lcom/shabakaty/downloader/s01$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/un0$e;->u:Lcom/shabakaty/downloader/un0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/un0$e;->r:Lcom/shabakaty/downloader/s01$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un0$e;->u:Lcom/shabakaty/downloader/un0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/un0;->u:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/rr;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/un0$e;)V

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/sy4;->L(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
