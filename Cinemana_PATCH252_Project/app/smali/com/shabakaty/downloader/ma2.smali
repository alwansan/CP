.class public final Lcom/shabakaty/downloader/ma2;
.super Lcom/shabakaty/downloader/pa2;
.source "JsonTreeWriter.java"


# static fields
.field public static final F:Ljava/io/Writer;

.field public static final G:Lcom/shabakaty/downloader/fa2;


# instance fields
.field public final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/z92;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/lang/String;

.field public E:Lcom/shabakaty/downloader/z92;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ma2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ma2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ma2;->F:Ljava/io/Writer;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/fa2;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fa2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ma2;->G:Lcom/shabakaty/downloader/fa2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ma2;->F:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/pa2;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/ba2;->a:Lcom/shabakaty/downloader/ba2;

    iput-object v0, p0, Lcom/shabakaty/downloader/ma2;->E:Lcom/shabakaty/downloader/z92;

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/ba2;->a:Lcom/shabakaty/downloader/ba2;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/fa2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fa2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    return-object p0
.end method

.method public D(Z)Lcom/shabakaty/downloader/pa2;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fa2;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fa2;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    return-object p0
.end method

.method public final K()Lcom/shabakaty/downloader/z92;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/z92;

    return-object v0
.end method

.method public final L(Lcom/shabakaty/downloader/z92;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->D:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/ba2;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pa2;->z:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ma2;->K()Lcom/shabakaty/downloader/z92;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ca2;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ma2;->D:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/ca2;->a:Lcom/shabakaty/downloader/ci2;

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/ci2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/ma2;->D:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/ma2;->E:Lcom/shabakaty/downloader/z92;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ma2;->K()Lcom/shabakaty/downloader/z92;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/shabakaty/downloader/r92;

    if-eqz v1, :cond_4

    .line 12
    check-cast v0, Lcom/shabakaty/downloader/r92;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/r92;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()Lcom/shabakaty/downloader/pa2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/r92;

    invoke-direct {v0}, Lcom/shabakaty/downloader/r92;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lcom/shabakaty/downloader/pa2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ca2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ca2;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/ma2;->G:Lcom/shabakaty/downloader/fa2;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lcom/shabakaty/downloader/pa2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->D:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ma2;->K()Lcom/shabakaty/downloader/z92;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/shabakaty/downloader/r92;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public f()Lcom/shabakaty/downloader/pa2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->D:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ma2;->K()Lcom/shabakaty/downloader/z92;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/shabakaty/downloader/ca2;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;
    .locals 1

    const-string v0, "name == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/ma2;->D:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ma2;->K()Lcom/shabakaty/downloader/z92;

    move-result-object v0

    .line 4
    instance-of v0, v0, Lcom/shabakaty/downloader/ca2;

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ma2;->D:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public k()Lcom/shabakaty/downloader/pa2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ba2;->a:Lcom/shabakaty/downloader/ba2;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    return-object p0
.end method

.method public v(J)Lcom/shabakaty/downloader/pa2;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fa2;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fa2;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    return-object p0
.end method

.method public w(Ljava/lang/Boolean;)Lcom/shabakaty/downloader/pa2;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/ba2;->a:Lcom/shabakaty/downloader/ba2;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/fa2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fa2;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    return-object p0
.end method

.method public x(Ljava/lang/Number;)Lcom/shabakaty/downloader/pa2;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/ba2;->a:Lcom/shabakaty/downloader/ba2;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    return-object p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pa2;->w:Z

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Lcom/shabakaty/downloader/fa2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fa2;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ma2;->L(Lcom/shabakaty/downloader/z92;)V

    return-object p0
.end method
