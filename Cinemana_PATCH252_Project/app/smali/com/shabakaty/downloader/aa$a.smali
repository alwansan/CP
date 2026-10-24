.class public Lcom/shabakaty/downloader/aa$a;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/aa;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/aa$a;->r:Lcom/shabakaty/downloader/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa$a;->r:Lcom/shabakaty/downloader/aa;

    iget v1, v0, Lcom/shabakaty/downloader/aa;->k0:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/aa;->L(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aa$a;->r:Lcom/shabakaty/downloader/aa;

    iget v1, v0, Lcom/shabakaty/downloader/aa;->k0:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/aa;->L(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa$a;->r:Lcom/shabakaty/downloader/aa;

    iput-boolean v2, v0, Lcom/shabakaty/downloader/aa;->j0:Z

    .line 6
    iput v2, v0, Lcom/shabakaty/downloader/aa;->k0:I

    return-void
.end method
