.class public abstract Lcom/shabakaty/downloader/n60;
.super Lcom/shabakaty/downloader/f51;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/n60$b;,
        Lcom/shabakaty/downloader/n60$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/f51;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f51;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/n60;->b:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/n60;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n60;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/n60;->b:I

    return-void
.end method
