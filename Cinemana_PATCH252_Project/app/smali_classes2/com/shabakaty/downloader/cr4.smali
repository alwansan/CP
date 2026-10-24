.class public abstract Lcom/shabakaty/downloader/cr4;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# instance fields
.field public a:Lcom/shabakaty/downloader/ez;

.field public b:Lcom/shabakaty/downloader/co4;

.field public c:Lcom/shabakaty/downloader/wu0;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/k21;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Lcom/shabakaty/downloader/zn4;

.field public g:Lcom/shabakaty/downloader/la3;

.field public h:Lcom/shabakaty/downloader/ma3;

.field public i:Lcom/shabakaty/downloader/zn4$h;

.field public j:Lcom/shabakaty/downloader/zn4$g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zn4$h;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$h;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/cr4;->i:Lcom/shabakaty/downloader/zn4$h;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/zn4$g;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$g;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/cr4;->j:Lcom/shabakaty/downloader/zn4$g;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/k21;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract b()Lcom/shabakaty/downloader/ma3;
.end method

.method public c(Ljava/io/Reader;Ljava/lang/String;Lcom/shabakaty/downloader/la3;Lcom/shabakaty/downloader/ma3;)V
    .locals 1

    const-string v0, "String input must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/z02;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/z02;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/wu0;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/wu0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/cr4;->c:Lcom/shabakaty/downloader/wu0;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    .line 5
    new-instance p4, Lcom/shabakaty/downloader/ez;

    const v0, 0x8000

    .line 6
    invoke-direct {p4, p1, v0}, Lcom/shabakaty/downloader/ez;-><init>(Ljava/io/Reader;I)V

    .line 7
    iput-object p4, p0, Lcom/shabakaty/downloader/cr4;->a:Lcom/shabakaty/downloader/ez;

    .line 8
    iput-object p3, p0, Lcom/shabakaty/downloader/cr4;->g:Lcom/shabakaty/downloader/la3;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/co4;

    iget-object p4, p0, Lcom/shabakaty/downloader/cr4;->a:Lcom/shabakaty/downloader/ez;

    invoke-direct {p1, p4, p3}, Lcom/shabakaty/downloader/co4;-><init>(Lcom/shabakaty/downloader/ez;Lcom/shabakaty/downloader/la3;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr4;->b:Lcom/shabakaty/downloader/co4;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/cr4;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/io/Reader;Ljava/lang/String;Lcom/shabakaty/downloader/la3;Lcom/shabakaty/downloader/ma3;)Lcom/shabakaty/downloader/wu0;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/cr4;->c(Ljava/io/Reader;Ljava/lang/String;Lcom/shabakaty/downloader/la3;Lcom/shabakaty/downloader/ma3;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->b:Lcom/shabakaty/downloader/co4;

    .line 3
    :goto_0
    iget-boolean p2, p1, Lcom/shabakaty/downloader/co4;->e:Z

    if-nez p2, :cond_1

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    iget-object p3, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {p2, p1, p3}, Lcom/shabakaty/downloader/do4;->D(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-lez p2, :cond_2

    .line 6
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p4, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 8
    iput-object p3, p1, Lcom/shabakaty/downloader/co4;->f:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->l:Lcom/shabakaty/downloader/zn4$c;

    .line 10
    iput-object p2, p1, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    goto :goto_1

    .line 11
    :cond_2
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->f:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 12
    iget-object p4, p1, Lcom/shabakaty/downloader/co4;->l:Lcom/shabakaty/downloader/zn4$c;

    .line 13
    iput-object p2, p4, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 14
    iput-object p3, p1, Lcom/shabakaty/downloader/co4;->f:Ljava/lang/String;

    move-object p1, p4

    goto :goto_1

    .line 15
    :cond_3
    iput-boolean p4, p1, Lcom/shabakaty/downloader/co4;->e:Z

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->d:Lcom/shabakaty/downloader/zn4;

    .line 17
    :goto_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/cr4;->e(Lcom/shabakaty/downloader/zn4;)Z

    .line 18
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->g()Lcom/shabakaty/downloader/zn4;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    sget-object p2, Lcom/shabakaty/downloader/zn4$j;->w:Lcom/shabakaty/downloader/zn4$j;

    if-ne p1, p2, :cond_0

    .line 20
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->c:Lcom/shabakaty/downloader/wu0;

    return-object p1
.end method

.method public abstract e(Lcom/shabakaty/downloader/zn4;)Z
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->j:Lcom/shabakaty/downloader/zn4$g;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zn4$g;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$g;-><init>()V

    .line 3
    iput-object p1, v0, Lcom/shabakaty/downloader/zn4$i;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/cr4;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zn4$i;->s()Lcom/shabakaty/downloader/zn4$i;

    .line 7
    iput-object p1, v1, Lcom/shabakaty/downloader/zn4$i;->b:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/cr4;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->i:Lcom/shabakaty/downloader/zn4$h;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zn4$h;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$h;-><init>()V

    .line 3
    iput-object p1, v0, Lcom/shabakaty/downloader/zn4$i;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/cr4;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zn4$h;->s()Lcom/shabakaty/downloader/zn4$i;

    .line 7
    iput-object p1, v1, Lcom/shabakaty/downloader/zn4$i;->b:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/cr4;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1
.end method
