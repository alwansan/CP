.class public Lcom/shabakaty/downloader/vq$a;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/vq;->internalSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lcom/shabakaty/downloader/vq;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vq;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/vq$a;->s:Lcom/shabakaty/downloader/vq;

    iput-object p2, p0, Lcom/shabakaty/downloader/vq$a;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vq$a;->s:Lcom/shabakaty/downloader/vq;

    iget-object v1, p0, Lcom/shabakaty/downloader/vq$a;->r:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vq;->success(Ljava/lang/Object;)V

    return-void
.end method
