.class public final Lcom/shabakaty/downloader/j44$a$c;
.super Lcom/shabakaty/downloader/af2;
.source "ShabakatyValidator.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/j44$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/mq3;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/j44$a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/j44$a$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/j44$a$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/j44$a$c;->r:Lcom/shabakaty/downloader/j44$a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mq3;

    const-string v1, "^(?=.{6,64}$)[-a-zA-Z0-9._+]+"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mq3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
