.class public final Lcom/shabakaty/downloader/o30;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/o30$a;,
        Lcom/shabakaty/downloader/o30$d;,
        Lcom/shabakaty/downloader/o30$b;,
        Lcom/shabakaty/downloader/o30$c;
    }
.end annotation


# static fields
.field public static final m:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/common/api/a$d$c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public final g:Z

.field public h:Lcom/shabakaty/downloader/ch6;

.field public final i:Lcom/shabakaty/downloader/vm5;

.field public final j:Lcom/shabakaty/downloader/x30;

.field public k:Lcom/shabakaty/downloader/o30$d;

.field public final l:Lcom/shabakaty/downloader/o30$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    new-instance v1, Lcom/shabakaty/downloader/cd5;

    invoke-direct {v1}, Lcom/shabakaty/downloader/cd5;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "ClearcutLogger.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lcom/shabakaty/downloader/o30;->m:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/vm5;Lcom/shabakaty/downloader/x30;Lcom/shabakaty/downloader/o30$b;)V
    .locals 4

    sget-object p3, Lcom/shabakaty/downloader/ch6;->s:Lcom/shabakaty/downloader/ch6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/o30;->e:I

    iput-object p3, p0, Lcom/shabakaty/downloader/o30;->h:Lcom/shabakaty/downloader/ch6;

    iput-object p1, p0, Lcom/shabakaty/downloader/o30;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/o30;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "ClearcutLogger"

    const-string v3, "This can\'t happen."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    :goto_0
    iput v1, p0, Lcom/shabakaty/downloader/o30;->c:I

    iput v0, p0, Lcom/shabakaty/downloader/o30;->e:I

    iput-object p2, p0, Lcom/shabakaty/downloader/o30;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/shabakaty/downloader/o30;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/shabakaty/downloader/o30;->g:Z

    iput-object p5, p0, Lcom/shabakaty/downloader/o30;->i:Lcom/shabakaty/downloader/vm5;

    iput-object p6, p0, Lcom/shabakaty/downloader/o30;->j:Lcom/shabakaty/downloader/x30;

    new-instance p1, Lcom/shabakaty/downloader/o30$d;

    invoke-direct {p1}, Lcom/shabakaty/downloader/o30$d;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/o30;->k:Lcom/shabakaty/downloader/o30$d;

    iput-object p3, p0, Lcom/shabakaty/downloader/o30;->h:Lcom/shabakaty/downloader/ch6;

    iput-object p7, p0, Lcom/shabakaty/downloader/o30;->l:Lcom/shabakaty/downloader/o30$b;

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    const-string p2, "can\'t be anonymous with an upload account"

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/shabakaty/downloader/o30;
    .locals 9

    new-instance v8, Lcom/shabakaty/downloader/o30;

    .line 1
    new-instance v5, Lcom/shabakaty/downloader/v46;

    invoke-direct {v5, p0}, Lcom/shabakaty/downloader/v46;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v6, Lcom/shabakaty/downloader/mn0;->a:Lcom/shabakaty/downloader/mn0;

    new-instance v7, Lcom/shabakaty/downloader/ia7;

    invoke-direct {v7, p0}, Lcom/shabakaty/downloader/ia7;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/o30;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/vm5;Lcom/shabakaty/downloader/x30;Lcom/shabakaty/downloader/o30$b;)V

    return-object v8
.end method
