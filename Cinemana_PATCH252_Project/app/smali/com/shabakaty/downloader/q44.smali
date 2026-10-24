.class public final Lcom/shabakaty/downloader/q44;
.super Ljava/lang/Object;
.source "ShabakatyValidator.kt"


# direct methods
.method public static final a(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "input"

    const-string v1, "nativePattern"

    const-string v2, "compile(pattern)"

    const-string v3, "pattern"

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const-string v5, "[a-z]+"

    .line 1
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    :goto_0
    if-eqz v5, :cond_4

    if-nez p0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const-string v5, "[A-Z]+"

    .line 6
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_4

    if-nez p0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const-string v5, "[0-9]"

    .line 11
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_3
    const/4 v0, 0x6

    if-le p0, v0, :cond_4

    const/4 v4, 0x1

    :cond_4
    return v4
.end method

.method public static final b(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/shabakaty/downloader/j44$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j44$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/j44$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-object v0
.end method

.method public static final c([Lcom/shabakaty/downloader/j44;Lcom/shabakaty/downloader/tm1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/shabakaty/cinemana/ui/login/ShabakatyValidator;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    .line 3
    iget-boolean v4, v4, Lcom/shabakaty/downloader/j44;->b:Z

    .line 4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/ho3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ho3;-><init>()V

    .line 6
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v6, p0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    .line 7
    new-instance v8, Lcom/shabakaty/downloader/q44$a;

    invoke-direct {v8, v0, v5, v1, p1}, Lcom/shabakaty/downloader/q44$a;-><init>(Ljava/util/List;ILcom/shabakaty/downloader/ho3;Lcom/shabakaty/downloader/tm1;)V

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v5, Lcom/shabakaty/downloader/n44;

    invoke-direct {v5, v8, v6}, Lcom/shabakaty/downloader/n44;-><init>(Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/j44;)V

    .line 9
    iget-object v8, v6, Lcom/shabakaty/downloader/j44;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v8, v6, Lcom/shabakaty/downloader/j44;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 11
    iget-object v8, v6, Lcom/shabakaty/downloader/j44;->e:Landroid/widget/EditText;

    if-nez v8, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    new-instance v9, Lcom/shabakaty/downloader/ho3;

    invoke-direct {v9}, Lcom/shabakaty/downloader/ho3;-><init>()V

    .line 13
    new-instance v10, Lcom/shabakaty/downloader/o44;

    invoke-direct {v10, v9, v6, v5}, Lcom/shabakaty/downloader/o44;-><init>(Lcom/shabakaty/downloader/ho3;Lcom/shabakaty/downloader/j44;Lcom/shabakaty/downloader/rm1;)V

    .line 14
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_2
    move v5, v7

    goto :goto_1

    :cond_2
    return-void
.end method
