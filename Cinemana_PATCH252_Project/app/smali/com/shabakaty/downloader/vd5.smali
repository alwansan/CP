.class public synthetic Lcom/shabakaty/downloader/vd5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/pr2;


# direct methods
.method public static final A(Lcom/shabakaty/downloader/y45;)Lcom/shabakaty/downloader/mr0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/c72;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mr0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/lr0;->h(Lcom/shabakaty/downloader/y45;)Lcom/shabakaty/downloader/mr0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final B(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/me4;->z(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static final C(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x41

    if-gt v5, v4, :cond_0

    const/16 v5, 0x5b

    if-ge v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 3
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "builder.toString()"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final D(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final E(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/ku4;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/ku4;

    invoke-interface {p0}, Lcom/shabakaty/downloader/ku4;->getOrigin()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vd5;->E(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    instance-of v0, p0, Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/shabakaty/downloader/e74;

    check-cast p0, Lcom/shabakaty/downloader/b74;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/e74;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_0

    .line 5
    :cond_2
    instance-of v0, p0, Lcom/shabakaty/downloader/fe1;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/shabakaty/downloader/je1;

    check-cast p0, Lcom/shabakaty/downloader/fe1;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/je1;-><init>(Lcom/shabakaty/downloader/fe1;Lcom/shabakaty/downloader/qe2;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static final a(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->v(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wb2;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final b(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)[TE;"
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be non-negative."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-gt v3, v0, :cond_2

    const/16 v3, 0x7b

    if-ge v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 3
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;
    .locals 3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    const-string p3, "<this>"

    .line 1
    invoke-static {p0, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    .line 3
    instance-of p2, p0, Lcom/shabakaty/downloader/vc0;

    if-eqz p2, :cond_2

    const-string p2, "<init>"

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name.asString()"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p2, "("

    .line 4
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-interface {p2}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p2

    const-string v0, "it.type"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lcom/shabakaty/downloader/vd5;->a(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    .line 7
    :goto_1
    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sz4;

    .line 8
    invoke-interface {v0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v2, "parameter.type"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/vd5;->a(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_2

    :cond_5
    const-string p2, ")"

    .line 9
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_9

    const-string p1, "descriptor"

    .line 10
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of p1, p0, Lcom/shabakaty/downloader/vc0;

    if-eqz p1, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->P(Lcom/shabakaty/downloader/qe2;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 13
    instance-of p1, p0, Lcom/shabakaty/downloader/ai3;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    const-string p0, "V"

    .line 14
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 15
    :cond_8
    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {p3, p0}, Lcom/shabakaty/downloader/vd5;->a(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    .line 16
    :cond_9
    :goto_4
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final e(Lcom/shabakaty/downloader/rq;)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/c64;->a:Lcom/shabakaty/downloader/c64;

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->t(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    instance-of v3, v1, Lcom/shabakaty/downloader/q20;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/shabakaty/downloader/q20;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    return-object v2

    .line 4
    :cond_2
    invoke-interface {v1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    .line 5
    iget-boolean v3, v3, Lcom/shabakaty/downloader/hw2;->s:Z

    if-eqz v3, :cond_3

    return-object v2

    .line 6
    :cond_3
    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->a()Lcom/shabakaty/downloader/rq;

    move-result-object p0

    instance-of v3, p0, Lcom/shabakaty/downloader/t64;

    if-eqz v3, :cond_4

    check-cast p0, Lcom/shabakaty/downloader/t64;

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_1
    if-nez p0, :cond_5

    return-object v2

    :cond_5
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p0, v3, v3, v2}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0, v1, p0}, Lcom/shabakaty/downloader/rm3;->s(Lcom/shabakaty/downloader/c64;Lcom/shabakaty/downloader/q20;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f(II)V
    .locals 4

    if-gt p0, p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "toIndex ("

    const-string v2, ") is greater than size ("

    const-string v3, ")."

    invoke-static {v1, p0, v2, p1, v3}, Lcom/shabakaty/downloader/wt3;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final g([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOf(this, newSize)"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static h()Lcom/shabakaty/downloader/mu0;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/do1;->b:Ljava/lang/Runnable;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/jv3;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/jv3;-><init>(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public static final i(Lcom/shabakaty/downloader/er;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/er<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/er;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static final j(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final k(Lcom/shabakaty/downloader/r42;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/ku4;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/ku4;

    invoke-interface {p0}, Lcom/shabakaty/downloader/ku4;->O()Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final m(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/hl0;->b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    const-string p1, "inflate(\n\t\t\tthis,\n\t\t\tlay\u2026achToParent else false\n\t)"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic n(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZI)Landroidx/databinding/ViewDataBinding;
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/vd5;->m(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vd5;->E(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/ms1;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/ms1;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/ms1;->a()Lcom/shabakaty/downloader/e7;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "%s.androidInjector() returned null"

    .line 6
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/iq6;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/e7;->a(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-class v2, Lcom/shabakaty/downloader/ms1;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "%s does not implement %s"

    .line 11
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final q(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final r(Lcom/shabakaty/downloader/qe2;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/shabakaty/downloader/c51;

    if-nez v0, :cond_1

    .line 3
    instance-of v0, p0, Lcom/shabakaty/downloader/fe1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/fe1;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/fe1;->a1()Lcom/shabakaty/downloader/b74;

    move-result-object p0

    instance-of p0, p0, Lcom/shabakaty/downloader/c51;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final s(Lcom/shabakaty/downloader/qe2;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result p0

    return p0
.end method

.method public static final t(Ljava/lang/String;IZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eqz p2, :cond_1

    const/16 p1, 0x41

    if-gt p1, p0, :cond_0

    const/16 p1, 0x5b

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CinemanaLog: "

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final v(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wb2;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yb2;->a:Lcom/shabakaty/downloader/yb2;

    sget-object v1, Lcom/shabakaty/downloader/jt4;->k:Lcom/shabakaty/downloader/jt4;

    sget-object v2, Lcom/shabakaty/downloader/it4;->a:Lcom/shabakaty/downloader/it4;

    .line 2
    sget-object v3, Lcom/shabakaty/downloader/eo1;->b:Lcom/shabakaty/downloader/jn1;

    .line 3
    invoke-static {p0, v0, v1, v2, v3}, Lcom/shabakaty/downloader/nh3;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xb2;Lcom/shabakaty/downloader/jt4;Lcom/shabakaty/downloader/ht4;Lcom/shabakaty/downloader/jn1;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Lcom/shabakaty/downloader/wb2;

    return-object p0
.end method

.method public static final w([Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;I)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    aput-object v0, p0, p1

    return-void
.end method

.method public static final x([Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;II)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vd5;->w([Ljava/lang/Object;I)V

    move p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final y(Lcom/shabakaty/downloader/du0;Lcom/shabakaty/downloader/ud0;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/du0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/du0;->k()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/du0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/du0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_5

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>"

    .line 4
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/au0;

    .line 5
    iget-object p2, p1, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    iget-object v0, p1, Lcom/shabakaty/downloader/au0;->v:Ljava/lang/Object;

    .line 6
    invoke-interface {p2}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/zm4;->c(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/zm4;->a:Lcom/shabakaty/downloader/j61;

    if-eq v0, v2, :cond_1

    .line 9
    invoke-static {p2, v1, v0}, Lcom/shabakaty/downloader/ne0;->b(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Lcom/shabakaty/downloader/nv4;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 10
    :goto_1
    :try_start_0
    iget-object p1, p1, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2}, Lcom/shabakaty/downloader/nv4;->s0()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 12
    :cond_2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/shabakaty/downloader/nv4;->s0()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    :cond_3
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    :cond_4
    throw p0

    .line 15
    :cond_5
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static final z(Landroid/content/Context;J)V
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/y90$a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/y90$a;-><init>()V

    .line 2
    iput v0, v1, Lcom/shabakaty/downloader/y90$a;->a:I

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/y90;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/y90;-><init>(Lcom/shabakaty/downloader/y90$a;)V

    .line 4
    invoke-static {p0, v2}, Lcom/shabakaty/downloader/r75;->c(Landroid/content/Context;Lcom/shabakaty/downloader/y90;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 6
    :goto_0
    sget-object v1, Lcom/shabakaty/downloader/services/DownloaderService;->x:Lcom/shabakaty/downloader/services/DownloaderService$a;

    .line 7
    sget-boolean v1, Lcom/shabakaty/downloader/services/DownloaderService;->y:Z

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/gc0$a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/gc0$a;-><init>()V

    .line 9
    sget-object v2, Landroidx/work/c;->u:Landroidx/work/c;

    .line 10
    iput-object v2, v1, Lcom/shabakaty/downloader/gc0$a;->a:Landroidx/work/c;

    const/4 v2, 0x1

    .line 11
    iput-boolean v2, v1, Lcom/shabakaty/downloader/gc0$a;->b:Z

    .line 12
    iput-boolean v2, v1, Lcom/shabakaty/downloader/gc0$a;->c:Z

    .line 13
    new-instance v2, Lcom/shabakaty/downloader/gc0;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/gc0;-><init>(Lcom/shabakaty/downloader/gc0$a;)V

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/t73$a;

    const-class v3, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/t73$a;-><init>(Ljava/lang/Class;)V

    .line 15
    iget-object v3, v1, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    iput-object v2, v3, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 16
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Lcom/shabakaty/downloader/a85$a;->d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a85$a;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/t73$a;

    .line 17
    iget-object p2, p1, Lcom/shabakaty/downloader/a85$a;->c:Ljava/util/Set;

    const-string v1, "CheckDownload"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p1}, Lcom/shabakaty/downloader/a85$a;->a()Lcom/shabakaty/downloader/a85;

    move-result-object p1

    const-string p2, "OneTimeWorkRequestBuilde\u2026ckDownload\")\n\t\t\t\t.build()"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/shabakaty/downloader/t73;

    .line 19
    invoke-static {p0}, Lcom/shabakaty/downloader/r75;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/r75;

    move-result-object p0

    const-string p2, "getInstance(context)"

    .line 20
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v1, v0, p1}, Lcom/shabakaty/downloader/q75;->a(Ljava/lang/String;ILcom/shabakaty/downloader/t73;)Lcom/shabakaty/downloader/x73;

    :cond_0
    return-void
.end method
