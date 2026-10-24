.class public final Lcom/shabakaty/downloader/ay$c;
.super Lcom/shabakaty/downloader/mg4;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public v:Lcom/shabakaty/downloader/q83$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/q83$a<",
            "Lcom/shabakaty/downloader/ay$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q83$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q83$a<",
            "Lcom/shabakaty/downloader/ay$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/mg4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ay$c;->v:Lcom/shabakaty/downloader/q83$a;

    return-void
.end method


# virtual methods
.method public final H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ay$c;->v:Lcom/shabakaty/downloader/q83$a;

    check-cast v0, Lcom/shabakaty/downloader/cu;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/cu;->j(Lcom/shabakaty/downloader/q83;)V

    return-void
.end method
