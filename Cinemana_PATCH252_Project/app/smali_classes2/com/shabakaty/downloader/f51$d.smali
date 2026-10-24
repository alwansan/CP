.class public final Lcom/shabakaty/downloader/f51$d;
.super Lcom/shabakaty/downloader/f51;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f51;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->t(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/f51$d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    iget v0, p1, Lcom/shabakaty/downloader/he;->r:I

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p1, Lcom/shabakaty/downloader/he;->r:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p1, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/vm;

    iget-object v3, p1, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/vm;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    new-instance v3, Lcom/shabakaty/downloader/ge;

    iget-object v4, p1, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v2, v2, v1

    invoke-direct {v3, v4, v2, p1}, Lcom/shabakaty/downloader/ge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    move-object v2, v3

    .line 7
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ge;

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/shabakaty/downloader/f51$d;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/f51$d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[^%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
