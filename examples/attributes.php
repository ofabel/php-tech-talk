<!-- @formatter:off --><?php
namespace App\Controller;

#[Route('/users')]
class UserController extends RestController
{
    #[Get]
    #[Route('/')]
    public function create(): User { /* ... */ }

    #[Post]
    #[Route('/{id}')]
    public function read(#[Param] string $id): User { /* ... */ }
}
