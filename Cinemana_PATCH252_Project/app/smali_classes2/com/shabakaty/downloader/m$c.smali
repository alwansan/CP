.class public final Lcom/shabakaty/downloader/m$c;
.super Lcom/shabakaty/downloader/m$b;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/m$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final w:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "TE;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fv;ILcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fv<",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/shabakaty/downloader/tm1<",
            "-TE;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/m$b;-><init>(Lcom/shabakaty/downloader/fv;I)V

    iput-object p3, p0, Lcom/shabakaty/downloader/m$c;->w:Lcom/shabakaty/downloader/tm1;

    return-void
.end method


# virtual methods
.method public w(Ljava/lang/Object;)Lcom/shabakaty/downloader/tm1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m$c;->w:Lcom/shabakaty/downloader/tm1;

    iget-object v1, p0, Lcom/shabakaty/downloader/m$b;->u:Lcom/shabakaty/downloader/fv;

    invoke-interface {v1}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/c73;

    invoke-direct {v2, v0, p1, v1}, Lcom/shabakaty/downloader/c73;-><init>(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/me0;)V

    return-object v2
.end method
