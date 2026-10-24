.class public final synthetic Lcom/shabakaty/downloader/k82$a;
.super Lcom/shabakaty/downloader/bo1;
.source "JavaTypeEnhancementState.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/k82;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/bo1;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/fi1;",
        "Lcom/shabakaty/downloader/tr3;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/k82$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/k82$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/k82$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/k82$a;->r:Lcom/shabakaty/downloader/k82$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/bo1;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getDefaultReportLevelForAnnotation"

    return-object v0
.end method

.method public final getOwner()Lcom/shabakaty/downloader/nc2;
    .locals 3

    const-class v0, Lcom/shabakaty/downloader/q72;

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/dq3;->a:Lcom/shabakaty/downloader/fq3;

    const-string v2, "compiler.common.jvm"

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/fq3;->c(Ljava/lang/Class;Ljava/lang/String;)Lcom/shabakaty/downloader/nc2;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;"

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/fi1;

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/q72;->a:Lcom/shabakaty/downloader/fi1;

    const-string v0, "annotationFqName"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/s13;->a:Lcom/shabakaty/downloader/s13$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/s13$a;->b:Lcom/shabakaty/downloader/s13;

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/xe2;->v:Lcom/shabakaty/downloader/xe2;

    const-string v2, "annotation"

    .line 8
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "configuredReportLevels"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "configuredKotlinVersion"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/t13;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t13;->a(Lcom/shabakaty/downloader/fi1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tr3;

    if-nez v0, :cond_2

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/q72;->b:Lcom/shabakaty/downloader/s13;

    check-cast v0, Lcom/shabakaty/downloader/t13;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fqName"

    .line 11
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/t13;->c:Lcom/shabakaty/downloader/rr2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/shabakaty/downloader/r72;

    if-nez p1, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/tr3;->s:Lcom/shabakaty/downloader/tr3;

    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/r72;->b:Lcom/shabakaty/downloader/xe2;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xe2;->f(Lcom/shabakaty/downloader/xe2;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/r72;->c:Lcom/shabakaty/downloader/tr3;

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/r72;->a:Lcom/shabakaty/downloader/tr3;

    :goto_0
    move-object v0, p1

    :cond_2
    :goto_1
    return-object v0
.end method
