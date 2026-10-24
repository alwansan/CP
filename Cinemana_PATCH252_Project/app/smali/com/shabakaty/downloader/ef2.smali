.class public Lcom/shabakaty/downloader/ef2;
.super Ljava/lang/Object;
.source "LanguageContext.java"


# static fields
.field public static b:Lcom/shabakaty/downloader/ef2;


# instance fields
.field public a:Lcom/shabakaty/downloader/gf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xl2;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sput-object p0, Lcom/shabakaty/downloader/ef2;->b:Lcom/shabakaty/downloader/ef2;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v1, "PREFS_OS_LANGUAGE"

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/y23;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/y23;-><init>(Lcom/shabakaty/downloader/xl2;I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ef2;->a:Lcom/shabakaty/downloader/gf2;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/lk2;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/lk2;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ef2;->a:Lcom/shabakaty/downloader/gf2;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ef2;->a:Lcom/shabakaty/downloader/gf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/gf2;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
