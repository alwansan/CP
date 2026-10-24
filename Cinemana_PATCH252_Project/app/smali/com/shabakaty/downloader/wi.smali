.class public abstract Lcom/shabakaty/downloader/wi;
.super Ljava/lang/Object;
.source "BaseAccountScheme.kt"


# static fields
.field public static final synthetic $$delegatedProperties:[Lcom/shabakaty/downloader/jd2;


# instance fields
.field public final context:Landroid/content/Context;

.field public final manager$delegate:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/jd2;

    new-instance v1, Lcom/shabakaty/downloader/di3;

    const-class v2, Lcom/shabakaty/downloader/wi;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    const-string v3, "manager"

    const-string v4, "getManager()Landroid/accounts/AccountManager;"

    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/wi;->$$delegatedProperties:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wi;->context:Landroid/content/Context;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/wi$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/wi$a;-><init>(Lcom/shabakaty/downloader/wi;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/wi;->manager$delegate:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/shabakaty/downloader/wi;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/wi;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final getManager()Landroid/accounts/AccountManager;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/wi;->manager$delegate:Lcom/shabakaty/downloader/kf2;

    sget-object v1, Lcom/shabakaty/downloader/wi;->$$delegatedProperties:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    return-object v0
.end method

.method public abstract provideAuthenticator()Ljava/lang/String;
.end method

.method public saveAccount(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wi$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/wi$b;-><init>(Lcom/shabakaty/downloader/wi;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/s70;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/s70;-><init>(Lcom/shabakaty/downloader/j2;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/q70;->g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    return-object p1
.end method
