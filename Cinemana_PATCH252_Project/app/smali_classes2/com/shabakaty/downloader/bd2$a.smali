.class public final Lcom/shabakaty/downloader/bd2$a;
.super Lcom/shabakaty/downloader/oc2$b;
.source "KPackageImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/bd2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic g:[Lcom/shabakaty/downloader/jd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lcom/shabakaty/downloader/cq3$a;

.field public final d:Lcom/shabakaty/downloader/cq3$a;

.field public final e:Lcom/shabakaty/downloader/cq3$b;

.field public final f:Lcom/shabakaty/downloader/cq3$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/bd2$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "kotlinClass"

    const-string v5, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "scope"

    const-string v5, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "multifileFacade"

    const-string v5, "getMultifileFacade()Ljava/lang/Class;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "metadata"

    const-string v5, "getMetadata()Lkotlin/Triple;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "members"

    const-string v4, "getMembers()Ljava/util/Collection;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/bd2$a;->g:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bd2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/oc2$b;-><init>(Lcom/shabakaty/downloader/oc2;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/bd2$a$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/bd2$a$a;-><init>(Lcom/shabakaty/downloader/bd2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/bd2$a;->c:Lcom/shabakaty/downloader/cq3$a;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/bd2$a$e;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/bd2$a$e;-><init>(Lcom/shabakaty/downloader/bd2$a;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/bd2$a;->d:Lcom/shabakaty/downloader/cq3$a;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/bd2$a$d;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/bd2$a$d;-><init>(Lcom/shabakaty/downloader/bd2$a;Lcom/shabakaty/downloader/bd2;)V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/bd2$a;->e:Lcom/shabakaty/downloader/cq3$b;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/bd2$a$c;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/bd2$a$c;-><init>(Lcom/shabakaty/downloader/bd2$a;)V

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/bd2$a;->f:Lcom/shabakaty/downloader/cq3$b;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/bd2$a$b;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/bd2$a$b;-><init>(Lcom/shabakaty/downloader/bd2;Lcom/shabakaty/downloader/bd2$a;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/bd2$a;)Lcom/shabakaty/downloader/yp3;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/bd2$a;->c:Lcom/shabakaty/downloader/cq3$a;

    sget-object v0, Lcom/shabakaty/downloader/bd2$a;->g:[Lcom/shabakaty/downloader/jd2;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/shabakaty/downloader/yp3;

    return-object p0
.end method
