.class public final Lcom/shabakaty/downloader/k82;
.super Ljava/lang/Object;
.source "JavaTypeEnhancementState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k82$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/k82$b;

.field public static final e:Lcom/shabakaty/downloader/k82;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ra2;

.field public final b:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/tr3;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/shabakaty/downloader/k82$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/k82$b;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/k82;->d:Lcom/shabakaty/downloader/k82$b;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/k82;

    sget-object v2, Lcom/shabakaty/downloader/q72;->a:Lcom/shabakaty/downloader/fi1;

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/xe2;->v:Lcom/shabakaty/downloader/xe2;

    const-string v3, "configuredKotlinVersion"

    .line 3
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/q72;->c:Lcom/shabakaty/downloader/r72;

    .line 5
    iget-object v4, v3, Lcom/shabakaty/downloader/r72;->b:Lcom/shabakaty/downloader/xe2;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/xe2;->f(Lcom/shabakaty/downloader/xe2;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 7
    iget-object v2, v3, Lcom/shabakaty/downloader/r72;->c:Lcom/shabakaty/downloader/tr3;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v3, Lcom/shabakaty/downloader/r72;->a:Lcom/shabakaty/downloader/tr3;

    :goto_0
    const-string v3, "globalReportLevel"

    .line 9
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v3, Lcom/shabakaty/downloader/tr3;->t:Lcom/shabakaty/downloader/tr3;

    if-ne v2, v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 11
    :goto_1
    new-instance v4, Lcom/shabakaty/downloader/ra2;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v3, v1, v5}, Lcom/shabakaty/downloader/ra2;-><init>(Lcom/shabakaty/downloader/tr3;Lcom/shabakaty/downloader/tr3;Ljava/util/Map;I)V

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/k82$a;->r:Lcom/shabakaty/downloader/k82$a;

    invoke-direct {v0, v4, v1}, Lcom/shabakaty/downloader/k82;-><init>(Lcom/shabakaty/downloader/ra2;Lcom/shabakaty/downloader/tm1;)V

    sput-object v0, Lcom/shabakaty/downloader/k82;->e:Lcom/shabakaty/downloader/k82;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ra2;Lcom/shabakaty/downloader/tm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ra2;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/fi1;",
            "+",
            "Lcom/shabakaty/downloader/tr3;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getReportLevelForAnnotation"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k82;->a:Lcom/shabakaty/downloader/ra2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/k82;->b:Lcom/shabakaty/downloader/tm1;

    .line 4
    iget-boolean p1, p1, Lcom/shabakaty/downloader/ra2;->e:Z

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/q72;->a:Lcom/shabakaty/downloader/fi1;

    .line 6
    check-cast p2, Lcom/shabakaty/downloader/k82$a;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/k82$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/tr3;->s:Lcom/shabakaty/downloader/tr3;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/k82;->c:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "JavaTypeEnhancementState(jsr305="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/k82;->a:Lcom/shabakaty/downloader/ra2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getReportLevelForAnnotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/k82;->b:Lcom/shabakaty/downloader/tm1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
