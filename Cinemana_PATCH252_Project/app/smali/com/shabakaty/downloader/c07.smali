.class public Lcom/shabakaty/downloader/c07;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# static fields
.field public static final d:Lcom/shabakaty/downloader/c07;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c07;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/c07;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/shabakaty/downloader/c07;->d:Lcom/shabakaty/downloader/c07;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/c07;->a:Z

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/c07;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/c07;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/shabakaty/downloader/c07;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c07;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/shabakaty/downloader/c07;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/c07;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c07;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/shabakaty/downloader/c07;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c07;->b:Ljava/lang/String;

    return-object v0
.end method
