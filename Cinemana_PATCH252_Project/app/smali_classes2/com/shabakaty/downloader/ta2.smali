.class public final Lcom/shabakaty/downloader/ta2;
.super Ljava/lang/Object;
.source "JvmAnnotationNames.java"


# static fields
.field public static final a:Lcom/shabakaty/downloader/fi1;

.field public static final b:Lcom/shabakaty/downloader/hw2;

.field public static final c:Lcom/shabakaty/downloader/fi1;

.field public static final d:Lcom/shabakaty/downloader/fi1;

.field public static final e:Lcom/shabakaty/downloader/fi1;

.field public static final f:Lcom/shabakaty/downloader/fi1;

.field public static final g:Lcom/shabakaty/downloader/fi1;

.field public static final h:Lcom/shabakaty/downloader/fi1;

.field public static final i:Lcom/shabakaty/downloader/fi1;

.field public static final j:Lcom/shabakaty/downloader/fi1;

.field public static final k:Lcom/shabakaty/downloader/fi1;

.field public static final l:Lcom/shabakaty/downloader/fi1;

.field public static final m:Lcom/shabakaty/downloader/fi1;

.field public static final n:Lcom/shabakaty/downloader/fi1;

.field public static final o:Lcom/shabakaty/downloader/fi1;

.field public static final p:Lcom/shabakaty/downloader/fi1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.Metadata"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->a:Lcom/shabakaty/downloader/fi1;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/kb2;->c(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/kb2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kb2;->e()Ljava/lang/String;

    const-string v0, "value"

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ta2;->b:Lcom/shabakaty/downloader/hw2;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-class v1, Ljava/lang/annotation/Target;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->c:Lcom/shabakaty/downloader/fi1;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-class v1, Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-class v1, Ljava/lang/annotation/Retention;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->d:Lcom/shabakaty/downloader/fi1;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-class v1, Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->e:Lcom/shabakaty/downloader/fi1;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-class v1, Ljava/lang/annotation/Documented;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->f:Lcom/shabakaty/downloader/fi1;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "java.lang.annotation.Repeatable"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->g:Lcom/shabakaty/downloader/fi1;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "org.jetbrains.annotations.NotNull"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->h:Lcom/shabakaty/downloader/fi1;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "org.jetbrains.annotations.Nullable"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->i:Lcom/shabakaty/downloader/fi1;

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "org.jetbrains.annotations.Mutable"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->j:Lcom/shabakaty/downloader/fi1;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "org.jetbrains.annotations.ReadOnly"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->k:Lcom/shabakaty/downloader/fi1;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.annotations.jvm.ReadOnly"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->l:Lcom/shabakaty/downloader/fi1;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.annotations.jvm.Mutable"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->m:Lcom/shabakaty/downloader/fi1;

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.jvm.PurelyImplements"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->n:Lcom/shabakaty/downloader/fi1;

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.jvm.internal"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.jvm.internal.EnhancedNullability"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->o:Lcom/shabakaty/downloader/fi1;

    .line 20
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.jvm.internal.EnhancedMutability"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ta2;->p:Lcom/shabakaty/downloader/fi1;

    return-void
.end method
