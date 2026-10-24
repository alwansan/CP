.class public final Lcom/shabakaty/downloader/xq0$c;
.super Lcom/shabakaty/downloader/af2;
.source "DescriptorRendererImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xq0;-><init>(Lcom/shabakaty/downloader/dr0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/xq0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xq0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xq0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xq0$c;->r:Lcom/shabakaty/downloader/xq0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$c;->r:Lcom/shabakaty/downloader/xq0;

    sget-object v1, Lcom/shabakaty/downloader/yq0;->r:Lcom/shabakaty/downloader/yq0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "changeOptions"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v2, Lcom/shabakaty/downloader/dr0;

    new-instance v3, Lcom/shabakaty/downloader/dr0;

    invoke-direct {v3}, Lcom/shabakaty/downloader/dr0;-><init>()V

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    const-string v5, "this::class.java.declaredFields"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_5

    aget-object v9, v4, v7

    add-int/lit8 v7, v7, 0x1

    .line 7
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/shabakaty/downloader/g53;

    if-eqz v11, :cond_1

    check-cast v10, Lcom/shabakaty/downloader/g53;

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "field.name"

    invoke-static {v11, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x2

    const-string v14, "is"

    invoke-static {v11, v14, v6, v13}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 11
    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_4

    invoke-virtual {v14, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    invoke-virtual {v14, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v14, "this as java.lang.String).substring(startIndex)"

    invoke-static {v8, v14}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_4
    const-string v8, "get"

    invoke-static {v8, v14}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v12, Lcom/shabakaty/downloader/di3;

    invoke-direct {v12, v11, v13, v8}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v10, v0, v12}, Lcom/shabakaty/downloader/g53;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v8

    .line 13
    new-instance v10, Lcom/shabakaty/downloader/er0;

    invoke-direct {v10, v8, v3}, Lcom/shabakaty/downloader/er0;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/dr0;)V

    .line 14
    invoke-virtual {v9, v3, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 15
    :cond_5
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/yq0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iput-boolean v8, v3, Lcom/shabakaty/downloader/dr0;->a:Z

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/xq0;

    invoke-direct {v0, v3}, Lcom/shabakaty/downloader/xq0;-><init>(Lcom/shabakaty/downloader/dr0;)V

    return-object v0
.end method
