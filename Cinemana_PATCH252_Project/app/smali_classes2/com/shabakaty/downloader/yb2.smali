.class public final Lcom/shabakaty/downloader/yb2;
.super Ljava/lang/Object;
.source "methodSignatureMapping.kt"

# interfaces
.implements Lcom/shabakaty/downloader/xb2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/xb2<",
        "Lcom/shabakaty/downloader/wb2;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/yb2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/yb2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yb2;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/yb2;->a:Lcom/shabakaty/downloader/yb2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/sf3;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/shabakaty/downloader/wb2;->a:Lcom/shabakaty/downloader/wb2;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/wb2;->i:Lcom/shabakaty/downloader/wb2$c;

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object p1, Lcom/shabakaty/downloader/wb2;->a:Lcom/shabakaty/downloader/wb2;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/wb2;->h:Lcom/shabakaty/downloader/wb2$c;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object p1, Lcom/shabakaty/downloader/wb2;->a:Lcom/shabakaty/downloader/wb2;

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/wb2;->g:Lcom/shabakaty/downloader/wb2$c;

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object p1, Lcom/shabakaty/downloader/wb2;->a:Lcom/shabakaty/downloader/wb2;

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/wb2;->f:Lcom/shabakaty/downloader/wb2$c;

    goto :goto_0

    .line 10
    :pswitch_4
    sget-object p1, Lcom/shabakaty/downloader/wb2;->a:Lcom/shabakaty/downloader/wb2;

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/wb2;->e:Lcom/shabakaty/downloader/wb2$c;

    goto :goto_0

    .line 12
    :pswitch_5
    sget-object p1, Lcom/shabakaty/downloader/wb2;->a:Lcom/shabakaty/downloader/wb2;

    .line 13
    sget-object p1, Lcom/shabakaty/downloader/wb2;->d:Lcom/shabakaty/downloader/wb2$c;

    goto :goto_0

    .line 14
    :pswitch_6
    sget-object p1, Lcom/shabakaty/downloader/wb2;->a:Lcom/shabakaty/downloader/wb2;

    .line 15
    sget-object p1, Lcom/shabakaty/downloader/wb2;->c:Lcom/shabakaty/downloader/wb2$c;

    goto :goto_0

    .line 16
    :pswitch_7
    sget-object p1, Lcom/shabakaty/downloader/wb2;->a:Lcom/shabakaty/downloader/wb2;

    .line 17
    sget-object p1, Lcom/shabakaty/downloader/wb2;->b:Lcom/shabakaty/downloader/wb2$c;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/wb2;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yb2;->i(Lcom/shabakaty/downloader/wb2;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yb2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/wb2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yb2;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/wb2$b;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/wb2;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/wb2$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/wb2$c;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/wb2$c;->j:Lcom/shabakaty/downloader/sb2;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/sb2;->u()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/kb2;->c(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/kb2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/kb2;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "byFqNameWithoutInnerClas\u2026apperFqName).internalName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yb2;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/wb2$b;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    const-string v0, "java/lang/Class"

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yb2;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/wb2$b;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/shabakaty/downloader/wb2;
    .locals 9

    const-string v0, "representation"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/sb2;->values()[Lcom/shabakaty/downloader/sb2;

    move-result-object v2

    .line 3
    array-length v3, v2

    const/4 v4, 0x0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v3, :cond_2

    aget-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    invoke-virtual {v7}, Lcom/shabakaty/downloader/sb2;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v1, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_0

    goto :goto_1

    :cond_2
    move-object v7, v5

    :goto_1
    if-nez v7, :cond_6

    const/16 v2, 0x56

    if-ne v1, v2, :cond_3

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/wb2$c;

    invoke-direct {p1, v5}, Lcom/shabakaty/downloader/wb2$c;-><init>(Lcom/shabakaty/downloader/sb2;)V

    goto :goto_3

    :cond_3
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_4

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/wb2$a;

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yb2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/wb2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/wb2$a;-><init>(Lcom/shabakaty/downloader/wb2;)V

    :goto_2
    move-object p1, v0

    goto :goto_3

    :cond_4
    const/16 v2, 0x4c

    if-ne v1, v2, :cond_5

    const/16 v1, 0x3b

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {p1}, Lcom/shabakaty/downloader/re4;->O(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1, v0}, Lcom/shabakaty/downloader/z02;->f(CCZ)Z

    .line 8
    :cond_5
    new-instance v0, Lcom/shabakaty/downloader/wb2$b;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/wb2$b;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    return-object p1

    .line 9
    :cond_6
    new-instance p1, Lcom/shabakaty/downloader/wb2$c;

    invoke-direct {p1, v7}, Lcom/shabakaty/downloader/wb2$c;-><init>(Lcom/shabakaty/downloader/sb2;)V

    return-object p1
.end method

.method public h(Ljava/lang/String;)Lcom/shabakaty/downloader/wb2$b;
    .locals 1

    const-string v0, "internalName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wb2$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/wb2$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public i(Lcom/shabakaty/downloader/wb2;)Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/wb2$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/wb2$a;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/wb2$a;->j:Lcom/shabakaty/downloader/wb2;

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yb2;->i(Lcom/shabakaty/downloader/wb2;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "["

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/wb2$c;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/shabakaty/downloader/wb2$c;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/wb2$c;->j:Lcom/shabakaty/downloader/sb2;

    if-nez p1, :cond_1

    const-string p1, "V"

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/sb2;->j()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "type.jvmPrimitiveType?.desc ?: \"V\""

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    instance-of v0, p1, Lcom/shabakaty/downloader/wb2$b;

    if-eqz v0, :cond_3

    const/16 v0, 0x4c

    invoke-static {v0}, Lcom/shabakaty/downloader/i61;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/wb2$b;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/wb2$b;->j:Ljava/lang/String;

    const/16 v1, 0x3b

    .line 9
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1
.end method
