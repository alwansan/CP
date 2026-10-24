.class public final Lcom/shabakaty/downloader/ic2$a;
.super Lcom/shabakaty/downloader/oc2$b;
.source "KClassImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ic2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic k:[Lcom/shabakaty/downloader/jd2;
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

.field public final e:Lcom/shabakaty/downloader/cq3$a;

.field public final f:Lcom/shabakaty/downloader/cq3$a;

.field public final g:Lcom/shabakaty/downloader/cq3$a;

.field public final h:Lcom/shabakaty/downloader/cq3$a;

.field public final i:Lcom/shabakaty/downloader/cq3$a;

.field public final j:Lcom/shabakaty/downloader/cq3$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/ic2$a;

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "annotations"

    const-string v5, "getAnnotations()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "simpleName"

    const-string v5, "getSimpleName()Ljava/lang/String;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "qualifiedName"

    const-string v5, "getQualifiedName()Ljava/lang/String;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "constructors"

    const-string v5, "getConstructors()Ljava/util/Collection;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "nestedClasses"

    const-string v5, "getNestedClasses()Ljava/util/Collection;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "objectInstance"

    const-string v5, "getObjectInstance()Ljava/lang/Object;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "typeParameters"

    const-string v5, "getTypeParameters()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 9
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "supertypes"

    const-string v5, "getSupertypes()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "sealedSubclasses"

    const-string v5, "getSealedSubclasses()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "declaredNonStaticMembers"

    const-string v5, "getDeclaredNonStaticMembers()Ljava/util/Collection;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "declaredStaticMembers"

    const-string v5, "getDeclaredStaticMembers()Ljava/util/Collection;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 13
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "inheritedNonStaticMembers"

    const-string v5, "getInheritedNonStaticMembers()Ljava/util/Collection;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 14
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "inheritedStaticMembers"

    const-string v5, "getInheritedStaticMembers()Ljava/util/Collection;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "allNonStaticMembers"

    const-string v5, "getAllNonStaticMembers()Ljava/util/Collection;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 16
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "allStaticMembers"

    const-string v5, "getAllStaticMembers()Ljava/util/Collection;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 17
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "declaredMembers"

    const-string v5, "getDeclaredMembers()Ljava/util/Collection;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 18
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "allMembers"

    const-string v4, "getAllMembers()Ljava/util/Collection;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/ic2$a;->k:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ic2;)V
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
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$i;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ic2$a$i;-><init>(Lcom/shabakaty/downloader/ic2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ic2$a;->c:Lcom/shabakaty/downloader/cq3$a;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$d;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ic2$a$d;-><init>(Lcom/shabakaty/downloader/ic2$a;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$p;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/ic2$a$p;-><init>(Lcom/shabakaty/downloader/ic2;Lcom/shabakaty/downloader/ic2$a;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$n;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ic2$a$n;-><init>(Lcom/shabakaty/downloader/ic2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ic2$a;->d:Lcom/shabakaty/downloader/cq3$a;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$e;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ic2$a$e;-><init>(Lcom/shabakaty/downloader/ic2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$l;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ic2$a$l;-><init>(Lcom/shabakaty/downloader/ic2$a;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$m;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ic2$a$m;-><init>(Lcom/shabakaty/downloader/ic2$a;Lcom/shabakaty/downloader/ic2;)V

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$r;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ic2$a$r;-><init>(Lcom/shabakaty/downloader/ic2$a;Lcom/shabakaty/downloader/ic2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$q;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ic2$a$q;-><init>(Lcom/shabakaty/downloader/ic2$a;Lcom/shabakaty/downloader/ic2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$o;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ic2$a$o;-><init>(Lcom/shabakaty/downloader/ic2$a;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$g;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ic2$a$g;-><init>(Lcom/shabakaty/downloader/ic2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ic2$a;->e:Lcom/shabakaty/downloader/cq3$a;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$h;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ic2$a$h;-><init>(Lcom/shabakaty/downloader/ic2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ic2$a;->f:Lcom/shabakaty/downloader/cq3$a;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$j;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ic2$a$j;-><init>(Lcom/shabakaty/downloader/ic2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ic2$a;->g:Lcom/shabakaty/downloader/cq3$a;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/ic2$a$k;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ic2$a$k;-><init>(Lcom/shabakaty/downloader/ic2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ic2$a;->h:Lcom/shabakaty/downloader/cq3$a;

    .line 17
    new-instance p1, Lcom/shabakaty/downloader/ic2$a$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ic2$a$b;-><init>(Lcom/shabakaty/downloader/ic2$a;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ic2$a;->i:Lcom/shabakaty/downloader/cq3$a;

    .line 18
    new-instance p1, Lcom/shabakaty/downloader/ic2$a$c;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ic2$a$c;-><init>(Lcom/shabakaty/downloader/ic2$a;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ic2$a;->j:Lcom/shabakaty/downloader/cq3$a;

    .line 19
    new-instance p1, Lcom/shabakaty/downloader/ic2$a$f;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ic2$a$f;-><init>(Lcom/shabakaty/downloader/ic2$a;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    .line 20
    new-instance p1, Lcom/shabakaty/downloader/ic2$a$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ic2$a$a;-><init>(Lcom/shabakaty/downloader/ic2$a;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/shabakaty/downloader/q20;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a;->c:Lcom/shabakaty/downloader/cq3$a;

    sget-object v1, Lcom/shabakaty/downloader/ic2$a;->k:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-descriptor>(...)"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/q20;

    return-object v0
.end method
