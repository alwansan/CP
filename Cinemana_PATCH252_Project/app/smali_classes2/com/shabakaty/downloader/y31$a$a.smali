.class public Lcom/shabakaty/downloader/y31$a$a;
.super Ljava/lang/Object;
.source "EnumEntrySyntheticClassDescriptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/y31$a;-><init>(Lcom/shabakaty/downloader/y31;Lcom/shabakaty/downloader/md4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/hw2;",
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/t64;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/y31$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y31$a;Lcom/shabakaty/downloader/y31;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/y31$a$a;->r:Lcom/shabakaty/downloader/y31$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hw2;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/y31$a$a;->r:Lcom/shabakaty/downloader/y31$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/y31$a;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/mz2;->G:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v1, p1, v2}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/y31$a;->j(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x8

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/y31$a;->h(I)V

    const/4 p1, 0x0

    throw p1
.end method
