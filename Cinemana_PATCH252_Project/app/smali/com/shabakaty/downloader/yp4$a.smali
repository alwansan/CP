.class public Lcom/shabakaty/downloader/yp4$a;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Lcom/shabakaty/downloader/r53;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yp4;->a(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/rn1;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/r53<",
        "TX;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/gr2;

.field public final synthetic b:Lcom/shabakaty/downloader/rn1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gr2;Lcom/shabakaty/downloader/rn1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yp4$a;->a:Lcom/shabakaty/downloader/gr2;

    iput-object p2, p0, Lcom/shabakaty/downloader/yp4$a;->b:Lcom/shabakaty/downloader/rn1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yp4$a;->a:Lcom/shabakaty/downloader/gr2;

    iget-object v1, p0, Lcom/shabakaty/downloader/yp4$a;->b:Lcom/shabakaty/downloader/rn1;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/rn1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    return-void
.end method
