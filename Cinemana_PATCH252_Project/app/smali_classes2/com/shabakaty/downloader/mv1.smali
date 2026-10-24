.class public Lcom/shabakaty/downloader/mv1;
.super Lcom/shabakaty/downloader/cr4;
.source "HtmlTreeBuilder.java"


# static fields
.field public static final A:[Ljava/lang/String;

.field public static final B:[Ljava/lang/String;

.field public static final v:[Ljava/lang/String;

.field public static final w:[Ljava/lang/String;

.field public static final x:[Ljava/lang/String;

.field public static final y:[Ljava/lang/String;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public k:Lcom/shabakaty/downloader/nv1;

.field public l:Lcom/shabakaty/downloader/nv1;

.field public m:Z

.field public n:Lcom/shabakaty/downloader/k21;

.field public o:Lcom/shabakaty/downloader/uh1;

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/k21;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/shabakaty/downloader/zn4$g;

.field public s:Z

.field public t:Z

.field public u:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 80

    const-string v0, "applet"

    const-string v1, "caption"

    const-string v2, "html"

    const-string v3, "marquee"

    const-string v4, "object"

    const-string v5, "table"

    const-string v6, "td"

    const-string v7, "th"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mv1;->v:[Ljava/lang/String;

    const-string v0, "ol"

    const-string v1, "ul"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mv1;->w:[Ljava/lang/String;

    const-string v0, "button"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mv1;->x:[Ljava/lang/String;

    const-string v0, "html"

    const-string v1, "table"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mv1;->y:[Ljava/lang/String;

    const-string v0, "optgroup"

    const-string v1, "option"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mv1;->z:[Ljava/lang/String;

    const-string v1, "dd"

    const-string v2, "dt"

    const-string v3, "li"

    const-string v4, "optgroup"

    const-string v5, "option"

    const-string v6, "p"

    const-string v7, "rp"

    const-string v8, "rt"

    .line 6
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mv1;->A:[Ljava/lang/String;

    const-string v1, "address"

    const-string v2, "applet"

    const-string v3, "area"

    const-string v4, "article"

    const-string v5, "aside"

    const-string v6, "base"

    const-string v7, "basefont"

    const-string v8, "bgsound"

    const-string v9, "blockquote"

    const-string v10, "body"

    const-string v11, "br"

    const-string v12, "button"

    const-string v13, "caption"

    const-string v14, "center"

    const-string v15, "col"

    const-string v16, "colgroup"

    const-string v17, "command"

    const-string v18, "dd"

    const-string v19, "details"

    const-string v20, "dir"

    const-string v21, "div"

    const-string v22, "dl"

    const-string v23, "dt"

    const-string v24, "embed"

    const-string v25, "fieldset"

    const-string v26, "figcaption"

    const-string v27, "figure"

    const-string v28, "footer"

    const-string v29, "form"

    const-string v30, "frame"

    const-string v31, "frameset"

    const-string v32, "h1"

    const-string v33, "h2"

    const-string v34, "h3"

    const-string v35, "h4"

    const-string v36, "h5"

    const-string v37, "h6"

    const-string v38, "head"

    const-string v39, "header"

    const-string v40, "hgroup"

    const-string v41, "hr"

    const-string v42, "html"

    const-string v43, "iframe"

    const-string v44, "img"

    const-string v45, "input"

    const-string v46, "isindex"

    const-string v47, "li"

    const-string v48, "link"

    const-string v49, "listing"

    const-string v50, "marquee"

    const-string v51, "menu"

    const-string v52, "meta"

    const-string v53, "nav"

    const-string v54, "noembed"

    const-string v55, "noframes"

    const-string v56, "noscript"

    const-string v57, "object"

    const-string v58, "ol"

    const-string v59, "p"

    const-string v60, "param"

    const-string v61, "plaintext"

    const-string v62, "pre"

    const-string v63, "script"

    const-string v64, "section"

    const-string v65, "select"

    const-string v66, "style"

    const-string v67, "summary"

    const-string v68, "table"

    const-string v69, "tbody"

    const-string v70, "td"

    const-string v71, "textarea"

    const-string v72, "tfoot"

    const-string v73, "th"

    const-string v74, "thead"

    const-string v75, "title"

    const-string v76, "tr"

    const-string v77, "ul"

    const-string v78, "wbr"

    const-string v79, "xmp"

    .line 7
    filled-new-array/range {v1 .. v79}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mv1;->B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/cr4;-><init>()V

    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->u:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Lcom/shabakaty/downloader/sz2;)V
    .locals 7

    const-string v0, "table"

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mv1;->p(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    move-object v4, v3

    check-cast v4, Lcom/shabakaty/downloader/k21;

    if-eqz v4, :cond_0

    .line 3
    check-cast v3, Lcom/shabakaty/downloader/k21;

    const/4 v4, 0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mv1;->h(Lcom/shabakaty/downloader/k21;)Lcom/shabakaty/downloader/k21;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/k21;

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 8
    iget-object v3, v0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    invoke-static {v3}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    iget v0, v0, Lcom/shabakaty/downloader/sz2;->s:I

    new-array v4, v1, [Lcom/shabakaty/downloader/sz2;

    aput-object p1, v4, v2

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v1, :cond_3

    .line 10
    aget-object v5, v4, p1

    if-eqz v5, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array must not contain any null objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-virtual {v3}, Lcom/shabakaty/downloader/sz2;->l()Ljava/util/List;

    move-result-object p1

    :goto_3
    if-ge v2, v1, :cond_5

    .line 13
    aget-object v5, v4, v2

    .line 14
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v3}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 16
    iget-object v6, v5, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    if-eqz v6, :cond_4

    .line 17
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/sz2;->y(Lcom/shabakaty/downloader/sz2;)V

    .line 18
    :cond_4
    iput-object v3, v5, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 19
    :cond_5
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 20
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/sz2;->w(I)V

    goto :goto_4

    .line 21
    :cond_6
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    :goto_4
    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final C(Lcom/shabakaty/downloader/sz2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->c:Lcom/shabakaty/downloader/wu0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/mv1;->t:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/mv1;->A(Lcom/shabakaty/downloader/sz2;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    .line 6
    :goto_0
    instance-of v0, p1, Lcom/shabakaty/downloader/k21;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/shabakaty/downloader/k21;

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 8
    iget-boolean v0, v0, Lcom/shabakaty/downloader/kk4;->h:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->o:Lcom/shabakaty/downloader/uh1;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/uh1;->z:Lcom/shabakaty/downloader/m21;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public D(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/k21;

    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/kk4;->a(Ljava/lang/String;Lcom/shabakaty/downloader/ma3;)Lcom/shabakaty/downloader/kk4;

    move-result-object p1

    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->e:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, p1, v1, v2}, Lcom/shabakaty/downloader/k21;-><init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mv1;->C(Lcom/shabakaty/downloader/sz2;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final E(Ljava/util/ArrayList;Lcom/shabakaty/downloader/k21;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/k21;",
            ">;",
            "Lcom/shabakaty/downloader/k21;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/k21;

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public F(Lcom/shabakaty/downloader/k21;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/mv1;->B:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public G(Lcom/shabakaty/downloader/k21;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/mv1;->E(Ljava/util/ArrayList;Lcom/shabakaty/downloader/k21;)Z

    move-result p1

    return p1
.end method

.method public H()Lcom/shabakaty/downloader/k21;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    return-object v0
.end method

.method public I(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k21;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 2
    invoke-virtual {p2, p1, p0}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1
.end method

.method public K(Lcom/shabakaty/downloader/k21;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_4

    .line 2
    iget-object v4, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/k21;

    if-nez v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object v5

    invoke-virtual {v4}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/he;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public L()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/mv1;->E(Ljava/util/ArrayList;Lcom/shabakaty/downloader/k21;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v1

    :cond_2
    const/4 v4, 0x0

    if-nez v3, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    if-eqz v0, :cond_4

    .line 5
    iget-object v5, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v0}, Lcom/shabakaty/downloader/mv1;->E(Ljava/util/ArrayList;Lcom/shabakaty/downloader/k21;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    .line 7
    :cond_5
    invoke-static {v0}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/mv1;->D(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object v5

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/he;->i(Lcom/shabakaty/downloader/he;)V

    .line 10
    iget-object v5, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v1, :cond_4

    :cond_6
    :goto_2
    return-void
.end method

.method public M(Lcom/shabakaty/downloader/k21;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k21;

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public N(Lcom/shabakaty/downloader/k21;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/k21;

    if-ne v2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public O()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_f

    .line 2
    iget-object v3, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/k21;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3
    :cond_0
    invoke-virtual {v3}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v3

    const-string v4, "select"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/nv1;->G:Lcom/shabakaty/downloader/nv1;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_3

    :cond_1
    const-string v4, "td"

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "th"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v4, "tr"

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/nv1;->E:Lcom/shabakaty/downloader/nv1;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto/16 :goto_3

    :cond_3
    const-string v4, "tbody"

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "thead"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "tfoot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v4, "caption"

    .line 12
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 13
    sget-object v0, Lcom/shabakaty/downloader/nv1;->B:Lcom/shabakaty/downloader/nv1;

    .line 14
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_3

    :cond_5
    const-string v4, "colgroup"

    .line 15
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 16
    sget-object v0, Lcom/shabakaty/downloader/nv1;->C:Lcom/shabakaty/downloader/nv1;

    .line 17
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_3

    :cond_6
    const-string v4, "table"

    .line 18
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 19
    sget-object v0, Lcom/shabakaty/downloader/nv1;->z:Lcom/shabakaty/downloader/nv1;

    .line 20
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_3

    :cond_7
    const-string v4, "head"

    .line 21
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 22
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    .line 23
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_3

    :cond_8
    const-string v4, "body"

    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 25
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    .line 26
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_3

    :cond_9
    const-string v4, "frameset"

    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 28
    sget-object v0, Lcom/shabakaty/downloader/nv1;->J:Lcom/shabakaty/downloader/nv1;

    .line 29
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_3

    :cond_a
    const-string v4, "html"

    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 31
    sget-object v0, Lcom/shabakaty/downloader/nv1;->t:Lcom/shabakaty/downloader/nv1;

    .line 32
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_c

    .line 33
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    .line 34
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_3

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 35
    :cond_d
    :goto_1
    sget-object v0, Lcom/shabakaty/downloader/nv1;->D:Lcom/shabakaty/downloader/nv1;

    .line 36
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    goto :goto_3

    .line 37
    :cond_e
    :goto_2
    sget-object v0, Lcom/shabakaty/downloader/nv1;->F:Lcom/shabakaty/downloader/nv1;

    .line 38
    iput-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    :cond_f
    :goto_3
    return-void
.end method

.method public b()Lcom/shabakaty/downloader/ma3;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ma3;->c:Lcom/shabakaty/downloader/ma3;

    return-object v0
.end method

.method public c(Ljava/io/Reader;Ljava/lang/String;Lcom/shabakaty/downloader/la3;Lcom/shabakaty/downloader/ma3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/cr4;->c(Ljava/io/Reader;Ljava/lang/String;Lcom/shabakaty/downloader/la3;Lcom/shabakaty/downloader/ma3;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/nv1;->r:Lcom/shabakaty/downloader/nv1;

    iput-object p1, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/mv1;->l:Lcom/shabakaty/downloader/nv1;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/shabakaty/downloader/mv1;->m:Z

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/mv1;->n:Lcom/shabakaty/downloader/k21;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/mv1;->o:Lcom/shabakaty/downloader/uh1;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/mv1;->q:Ljava/util/List;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/zn4$g;

    invoke-direct {p1}, Lcom/shabakaty/downloader/zn4$g;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/mv1;->r:Lcom/shabakaty/downloader/zn4$g;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/shabakaty/downloader/mv1;->s:Z

    .line 11
    iput-boolean p2, p0, Lcom/shabakaty/downloader/mv1;->t:Z

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/zn4;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0, p1, p0}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1
.end method

.method public h(Lcom/shabakaty/downloader/k21;)Lcom/shabakaty/downloader/k21;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k21;

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/k21;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method public final varargs j([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k21;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public k()V
    .locals 4

    const-string v0, "tbody"

    const-string v1, "tfoot"

    const-string v2, "thead"

    const-string v3, "template"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mv1;->j([Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 1

    const-string v0, "table"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mv1;->j([Ljava/lang/String;)V

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/nv1;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->g:Lcom/shabakaty/downloader/la3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/la3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->g:Lcom/shabakaty/downloader/la3;

    new-instance v1, Lcom/shabakaty/downloader/k66;

    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ez;->s()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected token [%s] when in state [%s]"

    .line 4
    invoke-direct {v1, v2, p1, v3}, Lcom/shabakaty/downloader/k66;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/mv1;->A:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mv1;->H()Lcom/shabakaty/downloader/k21;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/mv1;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k21;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public p(Ljava/lang/String;)Lcom/shabakaty/downloader/k21;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k21;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public q(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mv1;->x:[Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/mv1;->v:[Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/mv1;->u:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 4
    invoke-virtual {p0, v2, v1, v0}, Lcom/shabakaty/downloader/mv1;->t([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public r(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mv1;->v:[Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/mv1;->u:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0, p1}, Lcom/shabakaty/downloader/mv1;->t([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public s(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/k21;

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 5
    :cond_0
    sget-object v3, Lcom/shabakaty/downloader/mv1;->z:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Should not be reachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x64

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lt v0, v2, :cond_4

    .line 2
    iget-object v4, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/k21;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4, p1}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {v4, p2}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    if-eqz p3, :cond_3

    .line 5
    invoke-static {v4, p3}, Lcom/shabakaty/downloader/de4;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "TreeBuilder{currentToken="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mv1;->y:[Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/mv1;->u:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0, p1}, Lcom/shabakaty/downloader/mv1;->t([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/shabakaty/downloader/zn4$i;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/mv1;->y(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->b:Lcom/shabakaty/downloader/co4;

    sget-object v1, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/mv1;->r:Lcom/shabakaty/downloader/zn4$g;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zn4$i;->s()Lcom/shabakaty/downloader/zn4$i;

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 8
    iget-object v2, v2, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/zn4$i;->p(Ljava/lang/String;)Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    return-object p1

    .line 10
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/k21;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4$i;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/kk4;->a(Ljava/lang/String;Lcom/shabakaty/downloader/ma3;)Lcom/shabakaty/downloader/kk4;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/ma3;->a(Lcom/shabakaty/downloader/he;)Lcom/shabakaty/downloader/he;

    invoke-direct {v0, v1, v2, p1}, Lcom/shabakaty/downloader/k21;-><init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mv1;->C(Lcom/shabakaty/downloader/sz2;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public w(Lcom/shabakaty/downloader/zn4$c;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 5
    instance-of p1, p1, Lcom/shabakaty/downloader/zn4$b;

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/lp;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/lp;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "script"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/zl4;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/zl4;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/ql0;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/ql0;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    return-void
.end method

.method public x(Lcom/shabakaty/downloader/zn4$d;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/o60;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4$d;->i()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/o60;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mv1;->C(Lcom/shabakaty/downloader/sz2;)V

    return-void
.end method

.method public y(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4$i;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kk4;->a(Ljava/lang/String;Lcom/shabakaty/downloader/ma3;)Lcom/shabakaty/downloader/kk4;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/k21;

    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    invoke-direct {v1, v0, v2, v3}, Lcom/shabakaty/downloader/k21;-><init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/mv1;->C(Lcom/shabakaty/downloader/sz2;)V

    .line 4
    iget-boolean p1, p1, Lcom/shabakaty/downloader/zn4$i;->i:Z

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/kk4;->j:Ljava/util/Map;

    iget-object v2, v0, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-boolean p1, v0, Lcom/shabakaty/downloader/kk4;->e:Z

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->b:Lcom/shabakaty/downloader/co4;

    const-string v0, "Tag cannot be self closing; not a void tag"

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/co4;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Lcom/shabakaty/downloader/kk4;->f:Z

    :cond_1
    :goto_0
    return-object v1
.end method

.method public z(Lcom/shabakaty/downloader/zn4$h;Z)Lcom/shabakaty/downloader/uh1;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4$i;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kk4;->a(Ljava/lang/String;Lcom/shabakaty/downloader/ma3;)Lcom/shabakaty/downloader/kk4;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/uh1;

    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    invoke-direct {v1, v0, v2, p1}, Lcom/shabakaty/downloader/uh1;-><init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/mv1;->o:Lcom/shabakaty/downloader/uh1;

    .line 4
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/mv1;->C(Lcom/shabakaty/downloader/sz2;)V

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method
