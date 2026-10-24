.class public final Lcom/shabakaty/downloader/tb4$a;
.super Ljava/lang/Object;
.source "StandardNames.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tb4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final A:Lcom/shabakaty/downloader/fi1;

.field public static final B:Lcom/shabakaty/downloader/fi1;

.field public static final C:Lcom/shabakaty/downloader/fi1;

.field public static final D:Lcom/shabakaty/downloader/fi1;

.field public static final E:Lcom/shabakaty/downloader/fi1;

.field public static final F:Lcom/shabakaty/downloader/fi1;

.field public static final G:Lcom/shabakaty/downloader/fi1;

.field public static final H:Lcom/shabakaty/downloader/fi1;

.field public static final I:Lcom/shabakaty/downloader/fi1;

.field public static final J:Lcom/shabakaty/downloader/fi1;

.field public static final K:Lcom/shabakaty/downloader/fi1;

.field public static final L:Lcom/shabakaty/downloader/fi1;

.field public static final M:Lcom/shabakaty/downloader/fi1;

.field public static final N:Lcom/shabakaty/downloader/fi1;

.field public static final O:Lcom/shabakaty/downloader/fi1;

.field public static final P:Lcom/shabakaty/downloader/gi1;

.field public static final Q:Lcom/shabakaty/downloader/v20;

.field public static final R:Lcom/shabakaty/downloader/v20;

.field public static final S:Lcom/shabakaty/downloader/v20;

.field public static final T:Lcom/shabakaty/downloader/v20;

.field public static final U:Lcom/shabakaty/downloader/v20;

.field public static final V:Lcom/shabakaty/downloader/fi1;

.field public static final W:Lcom/shabakaty/downloader/fi1;

.field public static final X:Lcom/shabakaty/downloader/fi1;

.field public static final Y:Lcom/shabakaty/downloader/fi1;

.field public static final Z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/shabakaty/downloader/tb4$a;

.field public static final a0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/shabakaty/downloader/gi1;

.field public static final b0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/gi1;",
            "Lcom/shabakaty/downloader/sf3;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/shabakaty/downloader/gi1;

.field public static final c0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/gi1;",
            "Lcom/shabakaty/downloader/sf3;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/shabakaty/downloader/gi1;

.field public static final e:Lcom/shabakaty/downloader/gi1;

.field public static final f:Lcom/shabakaty/downloader/gi1;

.field public static final g:Lcom/shabakaty/downloader/gi1;

.field public static final h:Lcom/shabakaty/downloader/gi1;

.field public static final i:Lcom/shabakaty/downloader/gi1;

.field public static final j:Lcom/shabakaty/downloader/gi1;

.field public static final k:Lcom/shabakaty/downloader/gi1;

.field public static final l:Lcom/shabakaty/downloader/fi1;

.field public static final m:Lcom/shabakaty/downloader/fi1;

.field public static final n:Lcom/shabakaty/downloader/fi1;

.field public static final o:Lcom/shabakaty/downloader/fi1;

.field public static final p:Lcom/shabakaty/downloader/fi1;

.field public static final q:Lcom/shabakaty/downloader/fi1;

.field public static final r:Lcom/shabakaty/downloader/fi1;

.field public static final s:Lcom/shabakaty/downloader/fi1;

.field public static final t:Lcom/shabakaty/downloader/fi1;

.field public static final u:Lcom/shabakaty/downloader/fi1;

.field public static final v:Lcom/shabakaty/downloader/fi1;

.field public static final w:Lcom/shabakaty/downloader/fi1;

.field public static final x:Lcom/shabakaty/downloader/fi1;

.field public static final y:Lcom/shabakaty/downloader/fi1;

.field public static final z:Lcom/shabakaty/downloader/fi1;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/shabakaty/downloader/tb4$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tb4$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tb4$a;->a:Lcom/shabakaty/downloader/tb4$a;

    const-string v1, "Any"

    .line 1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    const-string v2, "fqName(simpleName).toUnsafe()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->b:Lcom/shabakaty/downloader/gi1;

    const-string v1, "Nothing"

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->c:Lcom/shabakaty/downloader/gi1;

    const-string v1, "Cloneable"

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->d:Lcom/shabakaty/downloader/gi1;

    const-string v1, "Suppress"

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    const-string v1, "Unit"

    .line 8
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->e:Lcom/shabakaty/downloader/gi1;

    const-string v1, "CharSequence"

    .line 10
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->f:Lcom/shabakaty/downloader/gi1;

    const-string v1, "String"

    .line 12
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->g:Lcom/shabakaty/downloader/gi1;

    const-string v1, "Array"

    .line 14
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->h:Lcom/shabakaty/downloader/gi1;

    const-string v1, "Boolean"

    .line 16
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->i:Lcom/shabakaty/downloader/gi1;

    const-string v1, "Char"

    .line 18
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Byte"

    .line 19
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Short"

    .line 20
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Int"

    .line 21
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Long"

    .line 22
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Float"

    .line 23
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Double"

    .line 24
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Number"

    .line 25
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->j:Lcom/shabakaty/downloader/gi1;

    const-string v1, "Enum"

    .line 27
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->k:Lcom/shabakaty/downloader/gi1;

    const-string v1, "Function"

    .line 29
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Throwable"

    .line 30
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->l:Lcom/shabakaty/downloader/fi1;

    const-string v1, "Comparable"

    .line 31
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->m:Lcom/shabakaty/downloader/fi1;

    .line 32
    sget-object v1, Lcom/shabakaty/downloader/tb4;->l:Lcom/shabakaty/downloader/fi1;

    const-string v3, "IntRange"

    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v3

    const-string v4, "RANGES_PACKAGE_FQ_NAME.c\u2026r(simpleName)).toUnsafe()"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "LongRange"

    .line 33
    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Deprecated"

    .line 34
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->n:Lcom/shabakaty/downloader/fi1;

    const-string v1, "DeprecatedSinceKotlin"

    .line 35
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    const-string v1, "DeprecationLevel"

    .line 36
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->o:Lcom/shabakaty/downloader/fi1;

    const-string v1, "ReplaceWith"

    .line 37
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->p:Lcom/shabakaty/downloader/fi1;

    const-string v1, "ExtensionFunctionType"

    .line 38
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->q:Lcom/shabakaty/downloader/fi1;

    const-string v1, "ParameterName"

    .line 39
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->r:Lcom/shabakaty/downloader/fi1;

    const-string v1, "Annotation"

    .line 40
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->s:Lcom/shabakaty/downloader/fi1;

    const-string v1, "Target"

    .line 41
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->t:Lcom/shabakaty/downloader/fi1;

    const-string v1, "AnnotationTarget"

    .line 42
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->u:Lcom/shabakaty/downloader/fi1;

    const-string v1, "AnnotationRetention"

    .line 43
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->v:Lcom/shabakaty/downloader/fi1;

    const-string v1, "Retention"

    .line 44
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->w:Lcom/shabakaty/downloader/fi1;

    const-string v1, "Repeatable"

    .line 45
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    const-string v1, "MustBeDocumented"

    .line 46
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->x:Lcom/shabakaty/downloader/fi1;

    const-string v1, "UnsafeVariance"

    .line 47
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->y:Lcom/shabakaty/downloader/fi1;

    const-string v1, "PublishedApi"

    .line 48
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    const-string v1, "Iterator"

    .line 49
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->z:Lcom/shabakaty/downloader/fi1;

    const-string v1, "Iterable"

    .line 50
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->A:Lcom/shabakaty/downloader/fi1;

    const-string v1, "Collection"

    .line 51
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->B:Lcom/shabakaty/downloader/fi1;

    const-string v1, "List"

    .line 52
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->C:Lcom/shabakaty/downloader/fi1;

    const-string v1, "ListIterator"

    .line 53
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->D:Lcom/shabakaty/downloader/fi1;

    const-string v1, "Set"

    .line 54
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->E:Lcom/shabakaty/downloader/fi1;

    const-string v1, "Map"

    .line 55
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->F:Lcom/shabakaty/downloader/fi1;

    const-string v3, "Entry"

    .line 56
    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->G:Lcom/shabakaty/downloader/fi1;

    const-string v1, "MutableIterator"

    .line 57
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->H:Lcom/shabakaty/downloader/fi1;

    const-string v1, "MutableIterable"

    .line 58
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->I:Lcom/shabakaty/downloader/fi1;

    const-string v1, "MutableCollection"

    .line 59
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->J:Lcom/shabakaty/downloader/fi1;

    const-string v1, "MutableList"

    .line 60
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->K:Lcom/shabakaty/downloader/fi1;

    const-string v1, "MutableListIterator"

    .line 61
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->L:Lcom/shabakaty/downloader/fi1;

    const-string v1, "MutableSet"

    .line 62
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->M:Lcom/shabakaty/downloader/fi1;

    const-string v1, "MutableMap"

    .line 63
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->N:Lcom/shabakaty/downloader/fi1;

    const-string v3, "MutableEntry"

    .line 64
    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->O:Lcom/shabakaty/downloader/fi1;

    const-string v1, "KClass"

    .line 65
    invoke-static {v1}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->P:Lcom/shabakaty/downloader/gi1;

    const-string v1, "KCallable"

    .line 66
    invoke-static {v1}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    const-string v1, "KProperty0"

    .line 67
    invoke-static {v1}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    const-string v1, "KProperty1"

    .line 68
    invoke-static {v1}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    const-string v1, "KProperty2"

    .line 69
    invoke-static {v1}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    const-string v1, "KMutableProperty0"

    .line 70
    invoke-static {v1}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    const-string v1, "KMutableProperty1"

    .line 71
    invoke-static {v1}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    const-string v1, "KMutableProperty2"

    .line 72
    invoke-static {v1}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    const-string v1, "KProperty"

    .line 73
    invoke-static {v1}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    const-string v3, "KMutableProperty"

    .line 74
    invoke-static {v3}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    .line 75
    invoke-virtual {v1}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->Q:Lcom/shabakaty/downloader/v20;

    const-string v1, "KDeclarationContainer"

    .line 76
    invoke-static {v1}, Lcom/shabakaty/downloader/tb4$a;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;

    const-string v1, "UByte"

    .line 77
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    const-string v3, "UShort"

    .line 78
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    const-string v4, "UInt"

    .line 79
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    const-string v5, "ULong"

    .line 80
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v5

    .line 81
    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->R:Lcom/shabakaty/downloader/v20;

    .line 82
    invoke-static {v3}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->S:Lcom/shabakaty/downloader/v20;

    .line 83
    invoke-static {v4}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->T:Lcom/shabakaty/downloader/v20;

    .line 84
    invoke-static {v5}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->U:Lcom/shabakaty/downloader/v20;

    const-string v1, "UByteArray"

    .line 85
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->V:Lcom/shabakaty/downloader/fi1;

    const-string v1, "UShortArray"

    .line 86
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->W:Lcom/shabakaty/downloader/fi1;

    const-string v1, "UIntArray"

    .line 87
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->X:Lcom/shabakaty/downloader/fi1;

    const-string v1, "ULongArray"

    .line 88
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/tb4$a;->Y:Lcom/shabakaty/downloader/fi1;

    .line 89
    invoke-static {}, Lcom/shabakaty/downloader/sf3;->values()[Lcom/shabakaty/downloader/sf3;

    move-result-object v0

    array-length v0, v0

    .line 90
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->e(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 91
    invoke-static {}, Lcom/shabakaty/downloader/sf3;->values()[Lcom/shabakaty/downloader/sf3;

    move-result-object v0

    .line 92
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    .line 93
    iget-object v6, v6, Lcom/shabakaty/downloader/sf3;->r:Lcom/shabakaty/downloader/hw2;

    .line 94
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->Z:Ljava/util/Set;

    .line 96
    invoke-static {}, Lcom/shabakaty/downloader/sf3;->values()[Lcom/shabakaty/downloader/sf3;

    move-result-object v0

    array-length v0, v0

    .line 97
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->e(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 98
    invoke-static {}, Lcom/shabakaty/downloader/sf3;->values()[Lcom/shabakaty/downloader/sf3;

    move-result-object v0

    .line 99
    array-length v3, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    .line 100
    iget-object v6, v6, Lcom/shabakaty/downloader/sf3;->s:Lcom/shabakaty/downloader/hw2;

    .line 101
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_1
    sput-object v1, Lcom/shabakaty/downloader/tb4$a;->a0:Ljava/util/Set;

    .line 103
    invoke-static {}, Lcom/shabakaty/downloader/sf3;->values()[Lcom/shabakaty/downloader/sf3;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->E(I)Ljava/util/HashMap;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/shabakaty/downloader/sf3;->values()[Lcom/shabakaty/downloader/sf3;

    move-result-object v1

    array-length v3, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    .line 105
    sget-object v7, Lcom/shabakaty/downloader/tb4$a;->a:Lcom/shabakaty/downloader/tb4$a;

    .line 106
    iget-object v8, v6, Lcom/shabakaty/downloader/sf3;->r:Lcom/shabakaty/downloader/hw2;

    .line 107
    invoke-virtual {v8}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v8

    const-string v9, "primitiveType.typeName.asString()"

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 110
    :cond_2
    sput-object v0, Lcom/shabakaty/downloader/tb4$a;->b0:Ljava/util/Map;

    .line 111
    invoke-static {}, Lcom/shabakaty/downloader/sf3;->values()[Lcom/shabakaty/downloader/sf3;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->E(I)Ljava/util/HashMap;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/shabakaty/downloader/sf3;->values()[Lcom/shabakaty/downloader/sf3;

    move-result-object v1

    array-length v3, v1

    :goto_3
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 113
    sget-object v6, Lcom/shabakaty/downloader/tb4$a;->a:Lcom/shabakaty/downloader/tb4$a;

    .line 114
    iget-object v7, v5, Lcom/shabakaty/downloader/sf3;->s:Lcom/shabakaty/downloader/hw2;

    .line 115
    invoke-virtual {v7}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v7

    const-string v8, "primitiveType.arrayTypeName.asString()"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/tb4$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 118
    :cond_3
    sput-object v0, Lcom/shabakaty/downloader/tb4$a;->c0:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;)Lcom/shabakaty/downloader/gi1;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb4;->f:Lcom/shabakaty/downloader/fi1;

    invoke-static {p0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object p0

    const-string v0, "KOTLIN_REFLECT_FQ_NAME.c\u2026r(simpleName)).toUnsafe()"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb4;->j:Lcom/shabakaty/downloader/fi1;

    invoke-static {p1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb4;->k:Lcom/shabakaty/downloader/fi1;

    invoke-static {p1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    invoke-static {p1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    return-object p1
.end method
