.class public Lcom/shabakaty/downloader/bn3;
.super Ljava/lang/Object;
.source "ReadKotlinClassHeaderAnnotationVisitor.java"

# interfaces
.implements Lcom/shabakaty/downloader/he2$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bn3$b;,
        Lcom/shabakaty/downloader/bn3$d;,
        Lcom/shabakaty/downloader/bn3$c;
    }
.end annotation


# static fields
.field public static final j:Z

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/v20;",
            "Lcom/shabakaty/downloader/be2$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:Lcom/shabakaty/downloader/be2$a;

.field public i:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlin.ignore.old.metadata"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/shabakaty/downloader/bn3;->j:Z

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/bn3;->k:Ljava/util/Map;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.jvm.internal.KotlinClass"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/be2$a;->u:Lcom/shabakaty/downloader/be2$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.jvm.internal.KotlinFileFacade"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/be2$a;->v:Lcom/shabakaty/downloader/be2$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClass"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/be2$a;->x:Lcom/shabakaty/downloader/be2$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClassPart"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/be2$a;->y:Lcom/shabakaty/downloader/be2$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.jvm.internal.KotlinSyntheticClass"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/be2$a;->w:Lcom/shabakaty/downloader/be2$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/bn3;->a:[I

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/bn3;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/shabakaty/downloader/bn3;->c:I

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/bn3;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/bn3;->e:[Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/bn3;->f:[Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/bn3;->g:[Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/bn3;->h:Lcom/shabakaty/downloader/be2$a;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/bn3;->i:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ta2;->a:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/fi1;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/bn3$c;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/bn3$c;-><init>(Lcom/shabakaty/downloader/bn3;Lcom/shabakaty/downloader/bn3$a;)V

    return-object p1

    .line 4
    :cond_0
    sget-boolean p2, Lcom/shabakaty/downloader/bn3;->j:Z

    if-eqz p2, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/bn3;->h:Lcom/shabakaty/downloader/be2$a;

    if-eqz p2, :cond_2

    return-object v0

    .line 6
    :cond_2
    sget-object p2, Lcom/shabakaty/downloader/bn3;->k:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/be2$a;

    if-eqz p1, :cond_3

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/bn3;->h:Lcom/shabakaty/downloader/be2$a;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/bn3$d;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/bn3$d;-><init>(Lcom/shabakaty/downloader/bn3;Lcom/shabakaty/downloader/bn3$a;)V

    return-object p1

    :cond_3
    return-object v0
.end method
