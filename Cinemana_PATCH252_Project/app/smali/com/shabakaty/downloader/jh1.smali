.class public Lcom/shabakaty/downloader/jh1;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/lh1$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Landroid/content/Context;

.field public final synthetic t:Lcom/shabakaty/downloader/gh1;

.field public final synthetic u:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/shabakaty/downloader/gh1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/jh1;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/jh1;->s:Landroid/content/Context;

    iput-object p3, p0, Lcom/shabakaty/downloader/jh1;->t:Lcom/shabakaty/downloader/gh1;

    iput p4, p0, Lcom/shabakaty/downloader/jh1;->u:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jh1;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/jh1;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/downloader/jh1;->t:Lcom/shabakaty/downloader/gh1;

    iget v3, p0, Lcom/shabakaty/downloader/jh1;->u:I

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/lh1;->a(Ljava/lang/String;Landroid/content/Context;Lcom/shabakaty/downloader/gh1;I)Lcom/shabakaty/downloader/lh1$a;

    move-result-object v0

    return-object v0
.end method
