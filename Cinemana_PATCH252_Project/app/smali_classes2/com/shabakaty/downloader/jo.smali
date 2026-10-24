.class public final Lcom/shabakaty/downloader/jo;
.super Lcom/shabakaty/downloader/d14;
.source "BuiltInSerializerProtocol.kt"


# static fields
.field public static final m:Lcom/shabakaty/downloader/jo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/jo;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jo;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/jo;->m:Lcom/shabakaty/downloader/jo;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/t81;

    invoke-direct {v1}, Lcom/shabakaty/downloader/t81;-><init>()V

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/po;->a:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 3
    sget-object v4, Lcom/shabakaty/downloader/po;->b:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/po;->c:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 5
    sget-object v5, Lcom/shabakaty/downloader/po;->d:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 6
    sget-object v6, Lcom/shabakaty/downloader/po;->e:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 7
    sget-object v7, Lcom/shabakaty/downloader/po;->f:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v7}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 8
    sget-object v8, Lcom/shabakaty/downloader/po;->g:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v8}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 9
    sget-object v10, Lcom/shabakaty/downloader/po;->h:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v10}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 10
    sget-object v9, Lcom/shabakaty/downloader/po;->i:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v9}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 11
    sget-object v11, Lcom/shabakaty/downloader/po;->j:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v11}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 12
    sget-object v12, Lcom/shabakaty/downloader/po;->k:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v12}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    .line 13
    sget-object v13, Lcom/shabakaty/downloader/po;->l:Lcom/shabakaty/downloader/pp1$f;

    invoke-virtual {v1, v13}, Lcom/shabakaty/downloader/t81;->a(Lcom/shabakaty/downloader/pp1$f;)V

    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v13}, Lcom/shabakaty/downloader/d14;-><init>(Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;Lcom/shabakaty/downloader/pp1$f;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/fi1;)Ljava/lang/String;
    .locals 7

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fqName.asString()"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v2, v3, v4, v5, v6}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default-package"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->g()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fqName.shortName().asString()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-string v0, ".kotlin_builtins"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
