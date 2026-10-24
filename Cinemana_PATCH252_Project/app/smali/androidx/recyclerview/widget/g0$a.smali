.class public Landroidx/recyclerview/widget/g0$a;
.super Ljava/lang/Object;
.source "StableIdStorage.java"

# interfaces
.implements Landroidx/recyclerview/widget/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/g0$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/g0$a$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/g0$a$a;-><init>(Landroidx/recyclerview/widget/g0$a;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/g0$a;->a:Landroidx/recyclerview/widget/g0$b;

    return-void
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/g0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g0$a;->a:Landroidx/recyclerview/widget/g0$b;

    return-object v0
.end method
