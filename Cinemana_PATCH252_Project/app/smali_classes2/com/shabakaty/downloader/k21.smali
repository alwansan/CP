.class public Lcom/shabakaty/downloader/k21;
.super Lcom/shabakaty/downloader/sz2;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k21$a;
    }
.end annotation


# static fields
.field public static final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public t:Lcom/shabakaty/downloader/kk4;

.field public u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/k21;",
            ">;>;"
        }
    .end annotation
.end field

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz2;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lcom/shabakaty/downloader/he;

.field public x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/k21;->y:Ljava/util/List;

    const-string v0, "\\s+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/sz2;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/k21;->y:Ljava/util/List;

    iput-object v0, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/k21;->x:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/shabakaty/downloader/k21;->w:Lcom/shabakaty/downloader/he;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    return-void
.end method

.method public static A(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/zl4;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    invoke-static {v1}, Lcom/shabakaty/downloader/k21;->I(Lcom/shabakaty/downloader/sz2;)Z

    move-result v1

    if-nez v1, :cond_9

    instance-of p1, p1, Lcom/shabakaty/downloader/lp;

    if-eqz p1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/zl4;->B(Ljava/lang/StringBuilder;)Z

    move-result p1

    sget-object v1, Lcom/shabakaty/downloader/de4;->a:[Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v1, :cond_a

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    const/16 v7, 0x20

    const/4 v8, 0x1

    if-eq v6, v7, :cond_2

    const/16 v9, 0x9

    if-eq v6, v9, :cond_2

    const/16 v9, 0xa

    if-eq v6, v9, :cond_2

    const/16 v9, 0xc

    if-eq v6, v9, :cond_2

    const/16 v9, 0xd

    if-eq v6, v9, :cond_2

    const/16 v9, 0xa0

    if-ne v6, v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_5

    if-eqz p1, :cond_3

    if-eqz v4, :cond_8

    :cond_3
    if-eqz v5, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    goto :goto_4

    .line 7
    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->getType(I)I

    move-result v7

    const/16 v9, 0x10

    if-ne v7, v9, :cond_7

    const/16 v7, 0x200b

    if-eq v6, v7, :cond_6

    const/16 v7, 0x200c

    if-eq v6, v7, :cond_6

    const/16 v7, 0x200d

    if-eq v6, v7, :cond_6

    const/16 v7, 0xad

    if-ne v6, v7, :cond_7

    :cond_6
    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_8

    .line 8
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 9
    :cond_8
    :goto_4
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_0

    .line 10
    :cond_9
    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    return-void
.end method

.method public static G(Lcom/shabakaty/downloader/k21;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/shabakaty/downloader/k21;",
            ">(",
            "Lcom/shabakaty/downloader/k21;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static I(Lcom/shabakaty/downloader/sz2;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    instance-of v1, p0, Lcom/shabakaty/downloader/k21;

    if-eqz v1, :cond_2

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/k21;

    const/4 v1, 0x0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 4
    iget-boolean v2, v2, Lcom/shabakaty/downloader/kk4;->g:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    check-cast p0, Lcom/shabakaty/downloader/k21;

    add-int/2addr v1, v3

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    if-nez p0, :cond_0

    :cond_2
    return v0
.end method


# virtual methods
.method public final B()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/k21;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->u:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/sz2;

    .line 5
    instance-of v4, v3, Lcom/shabakaty/downloader/k21;

    if-eqz v4, :cond_1

    .line 6
    check-cast v3, Lcom/shabakaty/downloader/k21;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/k21;->u:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public C()Lcom/shabakaty/downloader/m21;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/m21;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k21;->B()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/m21;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public D()Lcom/shabakaty/downloader/k21;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/sz2;->i()Lcom/shabakaty/downloader/sz2;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/sz2;

    .line 3
    instance-of v3, v2, Lcom/shabakaty/downloader/ql0;

    if-eqz v3, :cond_1

    .line 4
    check-cast v2, Lcom/shabakaty/downloader/ql0;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v3, v2, Lcom/shabakaty/downloader/o60;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Lcom/shabakaty/downloader/o60;

    .line 9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_2
    instance-of v3, v2, Lcom/shabakaty/downloader/k21;

    if-eqz v3, :cond_3

    .line 12
    check-cast v2, Lcom/shabakaty/downloader/k21;

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/k21;->E()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_3
    instance-of v3, v2, Lcom/shabakaty/downloader/lp;

    if-eqz v3, :cond_0

    .line 16
    check-cast v2, Lcom/shabakaty/downloader/lp;

    .line 17
    invoke-virtual {v2}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/k21;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/k21;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k21;->B()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/k21;->G(Lcom/shabakaty/downloader/k21;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/sz2;

    .line 3
    instance-of v3, v2, Lcom/shabakaty/downloader/zl4;

    if-eqz v3, :cond_1

    .line 4
    check-cast v2, Lcom/shabakaty/downloader/zl4;

    .line 5
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/k21;->A(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/zl4;)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v3, v2, Lcom/shabakaty/downloader/k21;

    if-eqz v3, :cond_0

    .line 7
    check-cast v2, Lcom/shabakaty/downloader/k21;

    .line 8
    iget-object v2, v2, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 9
    iget-object v2, v2, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    const-string v3, "br"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/shabakaty/downloader/zl4;->B(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " "

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/shabakaty/downloader/k21;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/k21;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k21;->B()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/k21;->G(Lcom/shabakaty/downloader/k21;Ljava/util/List;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public K(Ljava/lang/String;)Lcom/shabakaty/downloader/m21;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->t(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/tk3;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/f51;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/m21;

    invoke-direct {v0}, Lcom/shabakaty/downloader/m21;-><init>()V

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/n50;

    invoke-direct {v1, p0, v0, p1}, Lcom/shabakaty/downloader/n50;-><init>(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/m21;Lcom/shabakaty/downloader/f51;)V

    invoke-static {v1, p0}, Lcom/shabakaty/downloader/c12;->d(Lcom/shabakaty/downloader/uz2;Lcom/shabakaty/downloader/sz2;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k21;->D()Lcom/shabakaty/downloader/k21;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/shabakaty/downloader/he;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->w:Lcom/shabakaty/downloader/he;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/he;

    invoke-direct {v0}, Lcom/shabakaty/downloader/he;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/k21;->w:Lcom/shabakaty/downloader/he;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->w:Lcom/shabakaty/downloader/he;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->x:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Lcom/shabakaty/downloader/sz2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k21;->D()Lcom/shabakaty/downloader/k21;

    move-result-object v0

    return-object v0
.end method

.method public j(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/sz2;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/sz2;->j(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/sz2;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/k21;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->w:Lcom/shabakaty/downloader/he;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/he;->m()Lcom/shabakaty/downloader/he;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lcom/shabakaty/downloader/k21;->w:Lcom/shabakaty/downloader/he;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->x:Ljava/lang/String;

    iput-object v0, p1, Lcom/shabakaty/downloader/k21;->x:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/k21$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/k21$a;-><init>(Lcom/shabakaty/downloader/k21;I)V

    iput-object v0, p1, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/my;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/k21;->x:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/k21;->y:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/k21$a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/k21$a;-><init>(Lcom/shabakaty/downloader/k21;I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->w:Lcom/shabakaty/downloader/he;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 3

    .line 1
    iget-boolean v0, p3, Lcom/shabakaty/downloader/wu0$a;->v:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 3
    iget-boolean v0, v0, Lcom/shabakaty/downloader/kk4;->c:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    check-cast v0, Lcom/shabakaty/downloader/k21;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 6
    iget-boolean v0, v0, Lcom/shabakaty/downloader/kk4;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 8
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/sz2;->q(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/sz2;->q(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V

    :cond_2
    :goto_0
    const/16 p2, 0x3c

    .line 11
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    .line 14
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 15
    iget-object p2, p0, Lcom/shabakaty/downloader/k21;->w:Lcom/shabakaty/downloader/he;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1, p3}, Lcom/shabakaty/downloader/he;->u(Ljava/lang/Appendable;Lcom/shabakaty/downloader/wu0$a;)V

    .line 16
    :cond_3
    iget-object p2, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 17
    iget-boolean v1, p2, Lcom/shabakaty/downloader/kk4;->e:Z

    const/4 v2, 0x1

    if-nez v1, :cond_5

    iget-boolean p2, p2, Lcom/shabakaty/downloader/kk4;->f:Z

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_7

    .line 18
    iget p2, p3, Lcom/shabakaty/downloader/wu0$a;->x:I

    if-ne p2, v2, :cond_6

    if-eqz v1, :cond_6

    .line 19
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    :cond_6
    const-string p2, " />"

    .line 20
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    .line 21
    :cond_7
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_3
    return-void
.end method

.method public v(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 2
    iget-boolean v1, v0, Lcom/shabakaty/downloader/kk4;->e:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/shabakaty/downloader/kk4;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    .line 3
    :cond_2
    iget-boolean v0, p3, Lcom/shabakaty/downloader/wu0$a;->v:Z

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 5
    iget-boolean v0, v0, Lcom/shabakaty/downloader/kk4;->c:Z

    if-nez v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/sz2;->q(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V

    :cond_4
    :goto_2
    const-string p2, "</"

    .line 7
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    .line 10
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_5
    return-void
.end method

.method public z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/sz2;->y(Lcom/shabakaty/downloader/sz2;)V

    .line 4
    :cond_0
    iput-object p0, p1, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k21;->l()Ljava/util/List;

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 8
    iput v0, p1, Lcom/shabakaty/downloader/sz2;->s:I

    return-object p0
.end method
