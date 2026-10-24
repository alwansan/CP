.class public Lcom/shabakaty/downloader/xi1;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/sj1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/sj1<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sj1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/sj1<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi1;->a:Lcom/shabakaty/downloader/sj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/sj1;->u:Landroidx/fragment/app/q;

    invoke-virtual {v0}, Landroidx/fragment/app/q;->W()V

    return-void
.end method
