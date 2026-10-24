.class public final Lcom/shabakaty/downloader/k$c;
.super Ljava/lang/Object;
.source "AbstractBinaryClassAnnotationAndConstantLoader.kt"

# interfaces
.implements Lcom/shabakaty/downloader/he2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/k;->e(Lcom/shabakaty/downloader/gj3$a;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/k<",
            "TA;TC;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/k<",
            "TA;TC;>;",
            "Ljava/util/ArrayList<",
            "TA;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/k$c;->a:Lcom/shabakaty/downloader/k;

    iput-object p2, p0, Lcom/shabakaty/downloader/k$c;->b:Ljava/util/ArrayList;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k$c;->a:Lcom/shabakaty/downloader/k;

    iget-object v1, p0, Lcom/shabakaty/downloader/k$c;->b:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, v1}, Lcom/shabakaty/downloader/k;->k(Lcom/shabakaty/downloader/k;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)Lcom/shabakaty/downloader/he2$a;

    move-result-object p1

    return-object p1
.end method
