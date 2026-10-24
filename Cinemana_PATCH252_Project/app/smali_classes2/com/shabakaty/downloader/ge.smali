.class public Lcom/shabakaty/downloader/ge;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final u:[Ljava/lang/String;


# instance fields
.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Lcom/shabakaty/downloader/he;


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    const-string v0, "allowfullscreen"

    const-string v1, "async"

    const-string v2, "autofocus"

    const-string v3, "checked"

    const-string v4, "compact"

    const-string v5, "declare"

    const-string v6, "default"

    const-string v7, "defer"

    const-string v8, "disabled"

    const-string v9, "formnovalidate"

    const-string v10, "hidden"

    const-string v11, "inert"

    const-string v12, "ismap"

    const-string v13, "itemscope"

    const-string v14, "multiple"

    const-string v15, "muted"

    const-string v16, "nohref"

    const-string v17, "noresize"

    const-string v18, "noshade"

    const-string v19, "novalidate"

    const-string v20, "nowrap"

    const-string v21, "open"

    const-string v22, "readonly"

    const-string v23, "required"

    const-string v24, "reversed"

    const-string v25, "seamless"

    const-string v26, "selected"

    const-string v27, "sortable"

    const-string v28, "truespeed"

    const-string v29, "typemustmatch"

    .line 1
    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ge;->u:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->t(Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/ge;->s:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/shabakaty/downloader/ge;->t:Lcom/shabakaty/downloader/he;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/wu0$a;)Z
    .locals 2

    .line 1
    iget p2, p2, Lcom/shabakaty/downloader/wu0$a;->x:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    if-eqz p1, :cond_2

    const-string p2, ""

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/ge;->u:[Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Appendable;Lcom/shabakaty/downloader/wu0$a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/ge;->s:Ljava/lang/String;

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3
    invoke-static {v0, v1, p2}, Lcom/shabakaty/downloader/ge;->b(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/wu0$a;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "=\""

    .line 4
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object v3, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    .line 5
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/v31;->b(Ljava/lang/Appendable;Ljava/lang/String;Lcom/shabakaty/downloader/wu0$a;ZZZ)V

    const/16 p2, 0x22

    .line 6
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ge;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/ge;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/ge;->s:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/ge;->s:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ge;->s:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/ge;->s:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ge;->t:Lcom/shabakaty/downloader/he;

    iget-object v1, p0, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/he;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ge;->t:Lcom/shabakaty/downloader/he;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/he;->y(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/ge;->t:Lcom/shabakaty/downloader/he;

    iget-object v2, v2, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aput-object p1, v2, v1

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/ge;->s:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/wu0;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/wu0;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/wu0;->z:Lcom/shabakaty/downloader/wu0$a;

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/ge;->a(Ljava/lang/Appendable;Lcom/shabakaty/downloader/wu0$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/rz2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
