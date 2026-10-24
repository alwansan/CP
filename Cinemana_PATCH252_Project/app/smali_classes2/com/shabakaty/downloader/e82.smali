.class public final Lcom/shabakaty/downloader/e82;
.super Ljava/lang/Object;
.source "JavaToKotlinClassMap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/e82$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/e82;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Lcom/shabakaty/downloader/v20;

.field public static final g:Lcom/shabakaty/downloader/fi1;

.field public static final h:Lcom/shabakaty/downloader/v20;

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/gi1;",
            "Lcom/shabakaty/downloader/v20;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/gi1;",
            "Lcom/shabakaty/downloader/v20;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/gi1;",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/gi1;",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/e82$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/shabakaty/downloader/e82;

    invoke-direct {v0}, Lcom/shabakaty/downloader/e82;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shabakaty/downloader/vn1;->u:Lcom/shabakaty/downloader/vn1;

    .line 2
    iget-object v3, v2, Lcom/shabakaty/downloader/vn1;->r:Lcom/shabakaty/downloader/fi1;

    .line 3
    invoke-virtual {v3}, Lcom/shabakaty/downloader/fi1;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/vn1;->s:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/e82;->b:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shabakaty/downloader/vn1;->w:Lcom/shabakaty/downloader/vn1;

    .line 7
    iget-object v4, v2, Lcom/shabakaty/downloader/vn1;->r:Lcom/shabakaty/downloader/fi1;

    .line 8
    invoke-virtual {v4}, Lcom/shabakaty/downloader/fi1;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object v2, v2, Lcom/shabakaty/downloader/vn1;->s:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/e82;->c:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shabakaty/downloader/vn1;->v:Lcom/shabakaty/downloader/vn1;

    .line 12
    iget-object v4, v2, Lcom/shabakaty/downloader/vn1;->r:Lcom/shabakaty/downloader/fi1;

    .line 13
    invoke-virtual {v4}, Lcom/shabakaty/downloader/fi1;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/vn1;->s:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/e82;->d:Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shabakaty/downloader/vn1;->x:Lcom/shabakaty/downloader/vn1;

    .line 17
    iget-object v4, v2, Lcom/shabakaty/downloader/vn1;->r:Lcom/shabakaty/downloader/fi1;

    .line 18
    invoke-virtual {v4}, Lcom/shabakaty/downloader/fi1;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    iget-object v2, v2, Lcom/shabakaty/downloader/vn1;->s:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/e82;->e:Ljava/lang/String;

    .line 21
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.jvm.functions.FunctionN"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/e82;->f:Lcom/shabakaty/downloader/v20;

    .line 22
    invoke-virtual {v1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    const-string v2, "FUNCTION_N_CLASS_ID.asSingleFqName()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/e82;->g:Lcom/shabakaty/downloader/fi1;

    .line 23
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.reflect.KFunction"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/e82;->h:Lcom/shabakaty/downloader/v20;

    .line 24
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.reflect.KClass"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    .line 25
    const-class v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/e82;->i:Ljava/util/HashMap;

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/e82;->j:Ljava/util/HashMap;

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/e82;->k:Ljava/util/HashMap;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/e82;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/shabakaty/downloader/e82$a;

    .line 30
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->A:Lcom/shabakaty/downloader/fi1;

    invoke-static {v2}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->I:Lcom/shabakaty/downloader/fi1;

    .line 31
    new-instance v5, Lcom/shabakaty/downloader/v20;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v6

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v7

    const-string v8, "kotlinReadOnly.packageFqName"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/hi1;->a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;Z)V

    .line 32
    new-instance v4, Lcom/shabakaty/downloader/e82$a;

    const-class v6, Ljava/lang/Iterable;

    .line 33
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    .line 34
    invoke-direct {v4, v6, v2, v5}, Lcom/shabakaty/downloader/e82$a;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    aput-object v4, v1, v7

    .line 35
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->z:Lcom/shabakaty/downloader/fi1;

    invoke-static {v2}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->H:Lcom/shabakaty/downloader/fi1;

    .line 36
    new-instance v5, Lcom/shabakaty/downloader/v20;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v6

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lcom/shabakaty/downloader/hi1;->a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;Z)V

    .line 37
    new-instance v4, Lcom/shabakaty/downloader/e82$a;

    const-class v6, Ljava/util/Iterator;

    .line 38
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    .line 39
    invoke-direct {v4, v6, v2, v5}, Lcom/shabakaty/downloader/e82$a;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    const/4 v2, 0x1

    aput-object v4, v1, v2

    .line 40
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->B:Lcom/shabakaty/downloader/fi1;

    invoke-static {v2}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->J:Lcom/shabakaty/downloader/fi1;

    .line 41
    new-instance v5, Lcom/shabakaty/downloader/v20;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v6

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lcom/shabakaty/downloader/hi1;->a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;Z)V

    .line 42
    new-instance v4, Lcom/shabakaty/downloader/e82$a;

    const-class v6, Ljava/util/Collection;

    .line 43
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    .line 44
    invoke-direct {v4, v6, v2, v5}, Lcom/shabakaty/downloader/e82$a;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    const/4 v2, 0x2

    aput-object v4, v1, v2

    .line 45
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->C:Lcom/shabakaty/downloader/fi1;

    invoke-static {v2}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->K:Lcom/shabakaty/downloader/fi1;

    .line 46
    new-instance v5, Lcom/shabakaty/downloader/v20;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v6

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lcom/shabakaty/downloader/hi1;->a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;Z)V

    .line 47
    new-instance v4, Lcom/shabakaty/downloader/e82$a;

    const-class v6, Ljava/util/List;

    .line 48
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    .line 49
    invoke-direct {v4, v6, v2, v5}, Lcom/shabakaty/downloader/e82$a;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    const/4 v2, 0x3

    aput-object v4, v1, v2

    .line 50
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->E:Lcom/shabakaty/downloader/fi1;

    invoke-static {v2}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->M:Lcom/shabakaty/downloader/fi1;

    .line 51
    new-instance v5, Lcom/shabakaty/downloader/v20;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v6

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lcom/shabakaty/downloader/hi1;->a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;Z)V

    .line 52
    new-instance v4, Lcom/shabakaty/downloader/e82$a;

    const-class v6, Ljava/util/Set;

    .line 53
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    .line 54
    invoke-direct {v4, v6, v2, v5}, Lcom/shabakaty/downloader/e82$a;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    const/4 v2, 0x4

    aput-object v4, v1, v2

    .line 55
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->D:Lcom/shabakaty/downloader/fi1;

    invoke-static {v2}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->L:Lcom/shabakaty/downloader/fi1;

    .line 56
    new-instance v5, Lcom/shabakaty/downloader/v20;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v6

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lcom/shabakaty/downloader/hi1;->a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;Z)V

    .line 57
    new-instance v4, Lcom/shabakaty/downloader/e82$a;

    const-class v6, Ljava/util/ListIterator;

    .line 58
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    .line 59
    invoke-direct {v4, v6, v2, v5}, Lcom/shabakaty/downloader/e82$a;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    const/4 v2, 0x5

    aput-object v4, v1, v2

    .line 60
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->F:Lcom/shabakaty/downloader/fi1;

    invoke-static {v2}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v4

    sget-object v5, Lcom/shabakaty/downloader/tb4$a;->N:Lcom/shabakaty/downloader/fi1;

    .line 61
    new-instance v6, Lcom/shabakaty/downloader/v20;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v9

    invoke-virtual {v4}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lcom/shabakaty/downloader/hi1;->a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/fi1;

    move-result-object v5

    invoke-direct {v6, v9, v5, v7}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;Z)V

    .line 62
    new-instance v5, Lcom/shabakaty/downloader/e82$a;

    const-class v9, Ljava/util/Map;

    .line 63
    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v9

    .line 64
    invoke-direct {v5, v9, v4, v6}, Lcom/shabakaty/downloader/e82$a;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    const/4 v4, 0x6

    aput-object v5, v1, v4

    .line 65
    invoke-static {v2}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->G:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/fi1;->g()Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/v20;->d(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->O:Lcom/shabakaty/downloader/fi1;

    .line 66
    new-instance v5, Lcom/shabakaty/downloader/v20;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v6

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lcom/shabakaty/downloader/hi1;->a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    invoke-direct {v5, v6, v4, v7}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/fi1;Z)V

    .line 67
    new-instance v4, Lcom/shabakaty/downloader/e82$a;

    const-class v6, Ljava/util/Map$Entry;

    .line 68
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    .line 69
    invoke-direct {v4, v6, v2, v5}, Lcom/shabakaty/downloader/e82$a;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    const/4 v2, 0x7

    aput-object v4, v1, v2

    .line 70
    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/e82;->m:Ljava/util/List;

    .line 71
    const-class v2, Ljava/lang/Object;

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->b:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/e82;->c(Ljava/lang/Class;Lcom/shabakaty/downloader/gi1;)V

    .line 72
    const-class v2, Ljava/lang/String;

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->g:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/e82;->c(Ljava/lang/Class;Lcom/shabakaty/downloader/gi1;)V

    .line 73
    const-class v2, Ljava/lang/CharSequence;

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->f:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/e82;->c(Ljava/lang/Class;Lcom/shabakaty/downloader/gi1;)V

    .line 74
    const-class v2, Ljava/lang/Throwable;

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->l:Lcom/shabakaty/downloader/fi1;

    .line 75
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    invoke-static {v4}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/e82;->a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    .line 76
    const-class v2, Ljava/lang/Cloneable;

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->d:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/e82;->c(Ljava/lang/Class;Lcom/shabakaty/downloader/gi1;)V

    .line 77
    const-class v2, Ljava/lang/Number;

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->j:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/e82;->c(Ljava/lang/Class;Lcom/shabakaty/downloader/gi1;)V

    .line 78
    const-class v2, Ljava/lang/Comparable;

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->m:Lcom/shabakaty/downloader/fi1;

    .line 79
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    invoke-static {v4}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/e82;->a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    .line 80
    const-class v2, Ljava/lang/Enum;

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->k:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/e82;->c(Ljava/lang/Class;Lcom/shabakaty/downloader/gi1;)V

    .line 81
    const-class v2, Ljava/lang/annotation/Annotation;

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->s:Lcom/shabakaty/downloader/fi1;

    .line 82
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    invoke-static {v4}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/e82;->a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "kotlinFqNameUnsafe.toUnsafe()"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/e82$a;

    .line 84
    sget-object v4, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    .line 85
    iget-object v5, v1, Lcom/shabakaty/downloader/e82$a;->a:Lcom/shabakaty/downloader/v20;

    .line 86
    iget-object v6, v1, Lcom/shabakaty/downloader/e82$a;->b:Lcom/shabakaty/downloader/v20;

    .line 87
    iget-object v1, v1, Lcom/shabakaty/downloader/e82$a;->c:Lcom/shabakaty/downloader/v20;

    .line 88
    invoke-virtual {v4, v5, v6}, Lcom/shabakaty/downloader/e82;->a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    .line 89
    invoke-virtual {v1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    const-string v8, "mutableClassId.asSingleFqName()"

    invoke-static {v4, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v9, Lcom/shabakaty/downloader/e82;->j:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v6}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    const-string v4, "readOnlyClassId.asSingleFqName()"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v5, Lcom/shabakaty/downloader/e82;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    const-string v6, "mutableClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/shabakaty/downloader/e82;->l:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v2

    const-string v5, "readOnlyFqName.toUnsafe()"

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/sb2;->values()[Lcom/shabakaty/downloader/sb2;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 96
    sget-object v6, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    .line 97
    invoke-virtual {v5}, Lcom/shabakaty/downloader/sb2;->u()Lcom/shabakaty/downloader/fi1;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v8

    .line 98
    invoke-virtual {v5}, Lcom/shabakaty/downloader/sb2;->n()Lcom/shabakaty/downloader/sf3;

    move-result-object v5

    const-string v9, "jvmType.primitiveType"

    invoke-static {v5, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v9, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    .line 100
    iget-object v5, v5, Lcom/shabakaty/downloader/sf3;->r:Lcom/shabakaty/downloader/hw2;

    .line 101
    invoke-virtual {v9, v5}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v5

    .line 102
    invoke-static {v5}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v5

    .line 103
    invoke-virtual {v6, v8, v5}, Lcom/shabakaty/downloader/e82;->a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    goto :goto_1

    .line 104
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/p70;->a:Lcom/shabakaty/downloader/p70;

    .line 105
    sget-object v0, Lcom/shabakaty/downloader/p70;->b:Ljava/util/Set;

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/v20;

    .line 107
    sget-object v4, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    .line 108
    new-instance v5, Lcom/shabakaty/downloader/fi1;

    const-string v6, "kotlin.jvm.internal."

    invoke-static {v6}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/shabakaty/downloader/v20;->j()Lcom/shabakaty/downloader/hw2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "CompanionObject"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v5

    .line 109
    sget-object v6, Lcom/shabakaty/downloader/ca4;->c:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/v20;->d(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    .line 110
    invoke-virtual {v4, v5, v1}, Lcom/shabakaty/downloader/e82;->a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 111
    sget-object v4, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    new-instance v5, Lcom/shabakaty/downloader/fi1;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "kotlin.jvm.functions.Function"

    invoke-static {v8, v6}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v5

    invoke-static {v0}, Lcom/shabakaty/downloader/tb4;->a(I)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/shabakaty/downloader/e82;->a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    .line 112
    new-instance v5, Lcom/shabakaty/downloader/fi1;

    sget-object v6, Lcom/shabakaty/downloader/e82;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/shabakaty/downloader/e82;->h:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v4, v5, v0}, Lcom/shabakaty/downloader/e82;->b(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/v20;)V

    move v0, v1

    goto :goto_3

    :cond_3
    :goto_4
    const/16 v0, 0x16

    if-ge v7, v0, :cond_4

    add-int/lit8 v0, v7, 0x1

    .line 113
    sget-object v1, Lcom/shabakaty/downloader/vn1;->x:Lcom/shabakaty/downloader/vn1;

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    iget-object v5, v1, Lcom/shabakaty/downloader/vn1;->r:Lcom/shabakaty/downloader/fi1;

    .line 116
    invoke-virtual {v5}, Lcom/shabakaty/downloader/fi1;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, v1, Lcom/shabakaty/downloader/vn1;->s:Ljava/lang/String;

    .line 118
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    sget-object v4, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    new-instance v5, Lcom/shabakaty/downloader/fi1;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/shabakaty/downloader/e82;->h:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v4, v5, v1}, Lcom/shabakaty/downloader/e82;->b(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/v20;)V

    move v7, v0

    goto :goto_4

    .line 120
    :cond_4
    sget-object v0, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    sget-object v1, Lcom/shabakaty/downloader/tb4$a;->c:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    const-string v3, "nothing.toSafe()"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 121
    sget-object v3, Lcom/shabakaty/downloader/e82;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e82;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    const-string v2, "javaClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object p2

    const-string v0, "kotlinClassId.asSingleFqName()"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/e82;->j:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object p2

    const-string v1, "kotlinFqNameUnsafe.toUnsafe()"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/v20;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e82;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object p1

    const-string v1, "kotlinFqNameUnsafe.toUnsafe()"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/lang/Class;Lcom/shabakaty/downloader/gi1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/gi1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object p2

    const-string v0, "kotlinFqName.toSafe()"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object p1

    invoke-static {p2}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/e82;->a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V

    return-void
.end method

.method public final d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/shabakaty/downloader/v20;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e82;->d(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v20;->d(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final e(Lcom/shabakaty/downloader/gi1;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gi1;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlinFqName.asString()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/shabakaty/downloader/re4;->g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    const/16 p2, 0x30

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, p2, v1}, Lcom/shabakaty/downloader/z02;->f(CCZ)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_3

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/me4;->z(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x17

    if-lt p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_3
    return v1
.end method

.method public final f(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e82;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/v20;

    return-object p1
.end method

.method public final g(Lcom/shabakaty/downloader/gi1;)Lcom/shabakaty/downloader/v20;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e82;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/e82;->e(Lcom/shabakaty/downloader/gi1;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/e82;->f:Lcom/shabakaty/downloader/v20;

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/e82;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/e82;->e(Lcom/shabakaty/downloader/gi1;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/shabakaty/downloader/e82;->f:Lcom/shabakaty/downloader/v20;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/e82;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/e82;->e(Lcom/shabakaty/downloader/gi1;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/shabakaty/downloader/e82;->h:Lcom/shabakaty/downloader/v20;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/e82;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/e82;->e(Lcom/shabakaty/downloader/gi1;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/shabakaty/downloader/e82;->h:Lcom/shabakaty/downloader/v20;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/shabakaty/downloader/e82;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/v20;

    :goto_0
    return-object p1
.end method
