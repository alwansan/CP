.class public abstract enum Lcom/shabakaty/downloader/ct4$a;
.super Ljava/lang/Enum;
.source "IntersectionType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ct4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ct4$a$c;,
        Lcom/shabakaty/downloader/ct4$a$a;,
        Lcom/shabakaty/downloader/ct4$a$d;,
        Lcom/shabakaty/downloader/ct4$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/ct4$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/ct4$a;

.field public static final enum s:Lcom/shabakaty/downloader/ct4$a;

.field public static final enum t:Lcom/shabakaty/downloader/ct4$a;

.field public static final enum u:Lcom/shabakaty/downloader/ct4$a;

.field public static final synthetic v:[Lcom/shabakaty/downloader/ct4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ct4$a$c;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ct4$a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/ct4$a;->r:Lcom/shabakaty/downloader/ct4$a;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ct4$a$a;

    const-string v3, "ACCEPT_NULL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/ct4$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/ct4$a;->s:Lcom/shabakaty/downloader/ct4$a;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/ct4$a$d;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/ct4$a$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/ct4$a;->t:Lcom/shabakaty/downloader/ct4$a;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/ct4$a$b;

    const-string v7, "NOT_NULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/ct4$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/ct4$a;->u:Lcom/shabakaty/downloader/ct4$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shabakaty/downloader/ct4$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/shabakaty/downloader/ct4$a;->v:[Lcom/shabakaty/downloader/ct4$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/ct4$a;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/ct4$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/ct4$a;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/ct4$a;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/ct4$a;->v:[Lcom/shabakaty/downloader/ct4$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/ct4$a;

    return-object v0
.end method


# virtual methods
.method public abstract f(Lcom/shabakaty/downloader/qw4;)Lcom/shabakaty/downloader/ct4$a;
.end method

.method public final h(Lcom/shabakaty/downloader/qw4;)Lcom/shabakaty/downloader/ct4$a;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/ct4$a;->u:Lcom/shabakaty/downloader/ct4$a;

    sget-object v1, Lcom/shabakaty/downloader/ct4$a;->t:Lcom/shabakaty/downloader/ct4$a;

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/ct4$a;->s:Lcom/shabakaty/downloader/ct4$a;

    goto :goto_1

    .line 2
    :cond_0
    instance-of v2, p1, Lcom/shabakaty/downloader/rp0;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/rp0;

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    instance-of v2, v2, Lcom/shabakaty/downloader/ve4;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    instance-of v2, p1, Lcom/shabakaty/downloader/ve4;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    sget-object v5, Lcom/shabakaty/downloader/q64;->a:Lcom/shabakaty/downloader/q64;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 7
    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/z02;->d(ZZLcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/ue2;Lcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/qs4;

    move-result-object v2

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/rm3;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    sget-object v3, Lcom/shabakaty/downloader/qs4$a$b;->a:Lcom/shabakaty/downloader/qs4$a$b;

    invoke-static {v2, p1, v3}, Lcom/shabakaty/downloader/o0;->a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/qs4$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method
